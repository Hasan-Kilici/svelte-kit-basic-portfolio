{ pkgs }: {
	deps = with pkgs; [
		nodejs-18_x
		nodePackages.typescript-language-server
		nodePackages.svelte-language-server
	];
}