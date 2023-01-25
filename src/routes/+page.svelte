<script>
	import welcome from '$lib/images/svelte-welcome.webp';
	import welcome_fallback from '$lib/images/svelte-welcome.png';
</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<section>
<h3>Merhaba, Ben Hasan Kılıcı!</h3>
<a id="g" href="https://github.com/hasan-kilici"><i class="fa-brands fa-github"></i></a>
</section>

<style>
#g{
  font-size:1.6em;
  color: black;
  text-decoration:none;
}
</style>
