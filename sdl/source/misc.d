module misc;

import std.algorithm;
import std.exception;
import std.datetime;
import std.file;
import std.experimental.logger;
import std.path;
import std.range;
import std.string;
import std.traits;

import bindbc.sdl;

enum WindowMode {
	windowed,
	fullscreen,
	fullscreenExclusive,
}

void SDLError(string fmt) {
	errorf(fmt, SDL_GetError().fromStringz);
}

void enforceSDL(lazy bool expr, string message, string file = __FILE__, ulong line = __LINE__) {
	if (!expr) {
		throw new Exception(format!"%s: %s"(SDL_GetError().fromStringz, message), file, line);
	}
}

auto getDataFiles(string type, string pattern) {
	static struct Result {
		DirIterator iterator;
		bool pathExists;
		void popFront() {
			iterator.popFront();
		}
		auto front() {
			return iterator.front;
		}
		bool empty() {
			return !pathExists || iterator.empty;
		}
	}
	const path = buildPath("data", type);
	bool filterFunc(string name) {
		return globMatch(baseName(name), pattern);
	}
	tracef("Looking for %s (%s) in %s", type, pattern, path.asAbsolutePath);
	return Result(path.exists ? dirEntries(path, SpanMode.depth) : DirIterator.init, path.exists).map!(x => x.name).filter!filterFunc;
}

void enforceSDLLoaded(string what, alias versionFunction, string libName, T)(T got) {
	enforce(got != T.noLibrary, "Could not load "~what~": No library found - "~libName~" is missing or has incorrect architecture");
	enforce(got != T.badLibrary, "Could not load "~what~": Bad library found - "~libName~" is incompatible");
	static if (is(ReturnType!versionFunction == void)) {
	    SDL_version ver;
	    versionFunction(&ver);
	} else {
	    SDL_version ver = *versionFunction();
	}
    infof("Loaded "~what~": %s.%s.%s", ver.major, ver.minor, ver.patch);
}


enum FrameStatistic {
	gameLogic,
	sdlEvents,
	sdlRenderer,
	overlay,
	imgui,
	snesDrawFrame,
}
struct FrameStatTracker {
	import core.time : Duration, MonoTime;
	MonoTime[2][FrameStatistic.max + 1] frameStatistics;
	private MonoTime[2][FrameStatistic.max + 1] frameStatisticsNextFrame;
	private MonoTime lastCheck;
	MonoTime frameStart;
	MonoTime frameEnd;
	private MonoTime nextFrameStart;
	void startFrame() {
		lastCheck = MonoTime.currTime;
		nextFrameStart = lastCheck;
	}
	void checkpoint(FrameStatistic stat) {
		auto now = MonoTime.currTime();
		frameStatisticsNextFrame[stat] = [lastCheck, now];
		lastCheck = now;
	}
	void endFrame() {
		frameEnd = MonoTime.currTime();
		frameStatistics = frameStatisticsNextFrame;
		frameStart = nextFrameStart;
	}
}

FrameStatTracker frameStatTracker;

SysTime getLastModifiedTime(string path) {
	SysTime access, modified;
	getTimes(path, access, modified);
	return modified;
}
