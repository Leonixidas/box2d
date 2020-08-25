project "Box2D"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/box2d/*.h",
		"src/collision/*.cpp",
		"src/dynamics/*.h",
		"src/dynamics/*.cpp",
		"src/common/*.cpp",
		"src/rope/*.cpp"
	}

	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "c++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		buildoptions "/MTd"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		buildoptions "/MT"