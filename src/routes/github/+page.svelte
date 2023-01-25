<script>
import { onMount } from 'svelte'

export let user;
export let repository;
onMount(async () => {
    const res = await fetch('https://api.github.com/users/hasan-kilici')
    user = await res.json();
    const res2 = await fetch('https://api.github.com/users/hasan-kilici/repos');
    repository = await res2.json();
})
$: console.log(user);
</script>

<svelte:head>
	<title>Github</title>
	<meta name="description" content="Github" />
</svelte:head>

<div class="text-column">
{#if user}
<div class="profile">
 <div class="avatar">
  <img src="{user.avatar_url}">
 </div>
<div class="name">
<h1 class="username">{user.name}</h1>
<span class="login">{user.login}</span>
</div>
</div>
{/if}
{#if repository}
{#each repository as repos}
<h2>{repos.name}</h2>
{/each}
{/if}
</div>
<style>
  .username{
    font-size:2em;
  }
  .profile{
    display:flex;
    flex-wrap:wrap;
    align-items:center;
    gap:10px;
  }
  .avatar{
    width:10%;
  }
  .avatar img{
    width:100%;
    border-radius:50%;
  }
  .login{
    color:#aaa;
    font-size:0.9em;
  }
</style>