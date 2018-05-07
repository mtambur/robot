





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

<meta content="origin-when-cross-origin" name="referrer" />

  <link crossorigin="anonymous" href="https://assets.github-isl-01.ca.com/assets/frameworks-86cd322445303c5c004f8612ba4b203e9dc7e7759558ffb5175639c167a7aed0.css" integrity="sha256-hs0yJEUwPFwAT4YSuksgPp3H53WVWP+1F1Y5wWenrtA=" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets.github-isl-01.ca.com/assets/github-8f51e6850027ed8c6ec35a281c258fd48341694f143156fb71c567a0f9ef0a7b.css" integrity="sha256-j1HmhQAn7Yxuw1ooHCWP1INBaU8UMVb7ccVnoPnvCns=" media="all" rel="stylesheet" />
  
  
  
  

  <meta name="viewport" content="width=device-width">
  
  <title>rp-main/02_Release_Manager.robot at master · ReleaseAutomation/rp-main</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github-isl-01.ca.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars.github-isl-01.ca.com/u/93?s=400" property="og:image" /><meta content="GitHub Enterprise" property="og:site_name" /><meta content="object" property="og:type" /><meta content="ReleaseAutomation/rp-main" property="og:title" /><meta content="https://github-isl-01.ca.com/ReleaseAutomation/rp-main" property="og:url" /><meta content="rp-main - :rocket: Main repository for Release Planning" property="og:description" />

  <link rel="assets" href="https://assets.github-isl-01.ca.com/">
  <link rel="web-socket" href="wss://github-isl-01.ca.com/_sockets/VjI6NTg0OTgwOmNkZTZkYTViNzhiYjRlM2U2YzM3YzY5YTEyMjVjZmQwMjJiNzAzM2UyMTVkNTk0Zjc1NDIyZTc5MmY2ZjM5ZDA=--1defce74e7b17d07008003cc1d1359175088bfa5">
  <meta name="pjax-timeout" content="1000">
  <link rel="sudo-modal" href="/sessions/sudo_modal">
  <meta name="request-id" content="776efb03-34f3-4dc5-afdf-1ee9ac5c42ed" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">


<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged In">


  

      <meta name="hostname" content="github-isl-01.ca.com">
  <meta name="user-login" content="tamme01">



  <meta name="html-safe-nonce" content="e9a09eb589dffef55f86021dd4a28ace67a20c5b">

  <meta http-equiv="x-pjax-version" content="567309af311d05b414f3fdbe25fa94bd">
  

      <link href="https://github-isl-01.ca.com/ReleaseAutomation/rp-main/commits/master.atom?token=AAAA0sY0MtiYlGoUxGtepMkkTSqAowaXks64_RfbwA%3D%3D" rel="alternate" title="Recent Commits to rp-main:master" type="application/atom+xml">

  <meta name="description" content="rp-main - :rocket: Main repository for Release Planning">
  <meta name="go-import" content="github-isl-01.ca.com/ReleaseAutomation/rp-main git https://github-isl-01.ca.com/ReleaseAutomation/rp-main.git">

  


    <link rel="canonical" href="https://github-isl-01.ca.com/ReleaseAutomation/rp-main/blob/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" data-pjax-transient>



  <link rel="mask-icon" href="https://assets.github-isl-01.ca.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" class="js-site-favicon" href="https://assets.github-isl-01.ca.com/favicon-ent.ico">

<meta name="theme-color" content="#1e2327">


  <meta name="u2f-support" content="true">

  </head>

  <body class="logged-in enterprise env-production emoji-size-boost page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="bg-black text-white p-3 show-on-focus js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



        
<header class="Header  f5" role="banner">
  <div class="d-flex px-3 flex-justify-between container-lg">
    <div class="d-flex flex-justify-between">
      <a class="header-logo-invertocat" href="https://github-isl-01.ca.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
    <span class="header-logo-subbrand">Enterprise</span>
</a>


    </div>

    <div class="HeaderMenu d-flex flex-justify-between flex-auto">
      <div class="d-flex">
            <div class="">
              <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/search" class="js-site-search-form" data-scoped-search-url="/ReleaseAutomation/rp-main/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
        <a href="/ReleaseAutomation/rp-main/blob/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="header-search-scope no-underline">This repository</a>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        value=""
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
        <input type="hidden" class="js-site-search-type-field" name="type" >
    </label>
</form></div>

            </div>

          <ul class="d-flex pl-2 flex-items-center text-bold list-style-none" role="navigation">
            <li>
              <a href="/pulls" aria-label="Pull requests you created" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
                Pull requests
</a>            </li>
            <li>
              <a href="/issues" aria-label="Issues you created" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
                Issues
</a>            </li>
            <li>
              <a href="/explore" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship showcases showcases_search showcases_landing /explore">
                Explore
</a>            </li>
          </ul>
      </div>

      <div class="d-flex">
        
<ul class="user-nav d-flex flex-items-center list-style-none" id="user-links">
  <li class="dropdown js-menu-container js-header-notifications">
    <span class="d-inline-block  px-2">
      
      <a href="/notifications" aria-label="You have unread notifications" class="notification-indicator tooltipped tooltipped-s  js-socket-channel js-notification-indicator" data-channel="notification-changed:210" data-ga-click="Header, go to notifications, icon:unread" data-hotkey="g n">
          <span class="mail-status unread"></span>
          <svg aria-hidden="true" class="octicon octicon-bell" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1 .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z"/></svg>
</a>
    </span>
  </li>

  <li class="dropdown js-menu-container">
    <details class="dropdown-details js-dropdown-details d-flex px-2 flex-items-center">
      <summary class="HeaderNavlink"
         aria-label="Create new…"
         data-ga-click="Header, create new, icon:add">
        <svg aria-hidden="true" class="octicon octicon-plus float-left mr-1 mt-1" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"/></svg>
        <span class="dropdown-caret mt-1"></span>
      </summary>

      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


<a class="dropdown-item" href="https://gist.github-isl-01.ca.com/" data-ga-click="Header, create new gist">
  New gist
</a>




  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="ReleaseAutomation/rp-main">This repository</span>
  </div>
    <a class="dropdown-item" href="/ReleaseAutomation/rp-main/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </details>
  </li>

  <li class="dropdown js-menu-container">

    <details class="dropdown-details js-dropdown-details d-flex pl-2 flex-items-center">
      <summary class="HeaderNavlink name mt-1"
        aria-label="View profile and more"
        data-ga-click="Header, show menu, icon:avatar">
        <img alt="@tamme01" class="avatar float-left mr-1" src="https://avatars.github-isl-01.ca.com/u/210?s=40" height="20" width="20">
        <span class="dropdown-caret"></span>
      </summary>

      <ul class="dropdown-menu dropdown-menu-sw">
        <li class="dropdown-header header-nav-current-user css-truncate">
          Signed in as <strong class="css-truncate-target">tamme01</strong>
        </li>

        <li class="dropdown-divider"></li>

        <li><a class="dropdown-item" href="/tamme01" data-ga-click="Header, go to profile, text:your profile">
          Your profile
        </a></li>
        <li><a class="dropdown-item" href="/tamme01?tab=stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a></li>
          <li><a class="dropdown-item" href="https://gist.github-isl-01.ca.com/" data-ga-click="Header, your gists, text:your gists">Your Gists</a></li>

        <li class="dropdown-divider"></li>

        <li><a class="dropdown-item" href="https://help.github.com/enterprise/2.12/user" data-ga-click="Header, go to help, text:help">
          Help
        </a></li>

        <li><a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
          Settings
        </a></li>

        <li><!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Ast9IPiHb2mYj4g0+/G8fsW+L/WfHwN2XpfZWj+Ts3yqH4+LANpxCLssXOWSmG0/d8QHP3J5YaeE9+wfwP+fmw==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
        </form></li>
      </ul>
    </details>
  </li>
</ul>


        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="sr-only right-0" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="82FEE/zrI3aiUb/kukvZiLozWTSQaQs6d17y6Rc10m9btba4BLY9F4HyazXTIgjJCElx/n0PaeutPses6Fn+iA==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
</form>      </div>
    </div>
  </div>
</header>


      

  </div>

  <div id="start-of-content" class="show-on-focus"></div>

    <div id="js-flash-container">
</div>



  <div role="main">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
      



  



    <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav ">
      <div class="repohead-details-container clearfix container ">

        <ul class="pagehead-actions">
  <li>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="XX+9uo2Ny3NbPFzU1Mri1YtkZQyLOytSFoFlgjLH8oMmjQuJMcYy+ItDntskBt5/5kyhIm7cUkwiNKMdju7n3g==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="329" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/ReleaseAutomation/rp-main/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target"
            role="button"
            aria-haspopup="true"
            aria-expanded="false"
            aria-label="Toggle repository notifications menu"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
                <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                Unwatch
            </span>
          </a>
            <a class="social-count js-social-count"
              href="/ReleaseAutomation/rp-main/watchers"
              aria-label="17 users are watching this repository">
              17
            </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content">
            <div class="select-menu-header js-navigation-enable" tabindex="-1">
              <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                        Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-mute" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8 2.81v10.38c0 .67-.81 1-1.28.53L3 10H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h2l3.72-3.72C7.19 1.81 8 2.14 8 2.81zm7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06L11.44 8 9.47 9.97l1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06L13.56 8l1.97-1.97z"/></svg>
                        Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/unstar" class="starred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ixQfFrhLdWARSjjG1WNx435qiu1pHl6NXcA1oBNjgaiwkUScg0x+Clwv/h1le4zisN13IWOX5uhg8C3p7gj76w==" /></div>
      <input type="hidden" name="context" value="repository"></input>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar ReleaseAutomation/rp-main"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/ReleaseAutomation/rp-main/stargazers"
           aria-label="2 users starred this repository">
          2
        </a>
</form>
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/star" class="unstarred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="eZt3Ka/TN2YCi9DLXJS5kzVMn7PWsOiNMsnSsXBo6uG23QgOwitdSsEJEMqxSTbCDdG81FXgEWKxK8GpKHQRZQ==" /></div>
      <input type="hidden" name="context" value="repository"></input>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star ReleaseAutomation/rp-main"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Star
      </button>
        <a class="social-count js-social-count" href="/ReleaseAutomation/rp-main/stargazers"
           aria-label="2 users starred this repository">
          2
        </a>
</form>  </div>

  </li>

  <li>
          <a href="#fork-destination-box" class="btn btn-sm btn-with-count"
              title="Fork your own copy of ReleaseAutomation/rp-main to your account"
              aria-label="Fork your own copy of ReleaseAutomation/rp-main to your account"
              rel="facebox"
              data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
              <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
            Fork
          </a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header" data-facebox-id="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src=""
                class="js-fork-select-fragment fork-select-fragment"
                data-url="/ReleaseAutomation/rp-main/fork?fragment=1">
              <img alt="Loading" height="64" src="https://assets.github-isl-01.ca.com/images/spinners/octocat-spinner-128.gif" width="64" />
            </include-fragment>
          </div>

    <a href="/ReleaseAutomation/rp-main/network" class="social-count"
       aria-label="0 users forked this repository">
      0
    </a>
  </li>
</ul>

        <h1 class="private ">
  <svg aria-hidden="true" class="octicon octicon-lock" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 13H3v-1h1v1zm8-6v7c0 .55-.45 1-1 1H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h1V4c0-2.2 1.8-4 4-4s4 1.8 4 4v2h1c.55 0 1 .45 1 1zM3.8 6h4.41V4c0-1.22-.98-2.2-2.2-2.2-1.22 0-2.2.98-2.2 2.2v2H3.8zM11 7H2v7h9V7zM4 8H3v1h1V8zm0 2H3v1h1v-1z"/></svg>
  <span class="author" itemprop="author"><a href="/ReleaseAutomation" class="url fn" rel="author">ReleaseAutomation</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/ReleaseAutomation/rp-main" data-pjax="#js-repo-pjax-container">rp-main</a></strong>
    <span class="Label Label--outline v-align-middle">Private</span>

</h1>

      </div>
      
<nav class="reponav js-repo-nav js-sidenav-container-pjax container"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/ReleaseAutomation/rp-main" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches repo_packages /ReleaseAutomation/rp-main" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/ReleaseAutomation/rp-main/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /ReleaseAutomation/rp-main/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="Counter">1</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/ReleaseAutomation/rp-main/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /ReleaseAutomation/rp-main/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="Counter">0</span>
      <meta itemprop="position" content="3">
</a>  </span>

    <a href="/ReleaseAutomation/rp-main/projects" class="js-selected-navigation-item reponav-item" data-hotkey="g b" data-selected-links="repo_projects new_repo_project repo_project /ReleaseAutomation/rp-main/projects">
      <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      Projects
      <span class="Counter" >0</span>
</a>
    <a href="/ReleaseAutomation/rp-main/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /ReleaseAutomation/rp-main/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>

  <a href="/ReleaseAutomation/rp-main/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors dependency_graph pulse /ReleaseAutomation/rp-main/pulse">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Insights
</a>
    <a href="/ReleaseAutomation/rp-main/settings" class="js-selected-navigation-item reponav-item" data-selected-links="repo_settings repo_branch_settings hooks integration_installations /ReleaseAutomation/rp-main/settings">
      <svg aria-hidden="true" class="octicon octicon-gear" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 8.77v-1.6l-1.94-.64-.45-1.09.88-1.84-1.13-1.13-1.81.91-1.09-.45-.69-1.92h-1.6l-.63 1.94-1.11.45-1.84-.88-1.13 1.13.91 1.81-.45 1.09L0 7.23v1.59l1.94.64.45 1.09-.88 1.84 1.13 1.13 1.81-.91 1.09.45.69 1.92h1.59l.63-1.94 1.11-.45 1.84.88 1.13-1.13-.92-1.81.47-1.09L14 8.75v.02zM7 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/></svg>
      Settings
</a>
</nav>


    </div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    
  <a href="/ReleaseAutomation/rp-main/blob/185b07edcdbffd5e8c2216625b626f6fd78b138f/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

  <!-- blob contrib key: blob_contributors:v21:bfab9c6b8cb279fa32e2d3d34179e8c8 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class=" btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" aria-expanded="false" aria-haspopup="true">
      <i>Branch:</i>
      <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/630/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="630"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                630
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE297842/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE297842"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE297842
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE308749/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE308749"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE308749
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE337619/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE337619"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE337619
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE338568/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE338568"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE338568
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE348245/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE348245"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE348245
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE348246/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE348246"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE348246
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE348384/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE348384"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE348384
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE348646/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE348646"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE348646
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE348679/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE348679"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE348679
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE352685/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE352685"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE352685
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE352685_2/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE352685_2"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE352685_2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE357672-Fix-Failed-Reason-In-Notification/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE357672-Fix-Failed-Reason-In-Notification"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE357672-Fix-Failed-Reason-In-Notification
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/DE3334207/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="DE3334207"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                DE3334207
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/Fix-Saml-Error/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="Fix-Saml-Error"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                Fix-Saml-Error
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/Fix_Json_Utils/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="Fix_Json_Utils"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                Fix_Json_Utils
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/Fix_Nightly/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="Fix_Nightly"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                Fix_Nightly
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/Fix_Properties/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="Fix_Properties"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                Fix_Properties
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/FixAnalysisTaskOrder/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="FixAnalysisTaskOrder"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                FixAnalysisTaskOrder
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/RP-Ca-World/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="RP-Ca-World"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                RP-Ca-World
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/RP-beta2/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="RP-beta2"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                RP-beta2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/RP-beta3/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="RP-beta3"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                RP-beta3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/RP-beta4/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="RP-beta4"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                RP-beta4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-061420170845_asssh01/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-061420170845_asssh01"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-061420170845_asssh01
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-061420170845/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-061420170845"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-061420170845
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-070520170900/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-070520170900"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-070520170900
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-083120170800_asssh01/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-083120170800_asssh01"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-083120170800_asssh01
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-083120170800/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-083120170800"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-083120170800
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-outof660120/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-outof660120"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-outof660120
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-v670-03152018/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-v670-03152018"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-v670-03152018
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/SaaS-Prod-v670-03202018/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="SaaS-Prod-v670-03202018"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                SaaS-Prod-v670-03202018
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA218385_/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA218385_"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA218385_
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA734898/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA734898"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA734898
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA848364/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA848364"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA848364
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA913928/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA913928"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA913928
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA914090_1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA914090_1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA914090_1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA914090_2/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA914090_2"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA914090_2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA947468/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA947468"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA947468
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA948214/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA948214"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA948214
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA971011/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA971011"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA971011
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA971011_1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA971011_1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA971011_1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA978039/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA978039"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA978039
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA978662/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA978662"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA978662
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA986729/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA986729"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA986729
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA1014057/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA1014057"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA1014057
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA1029986/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA1029986"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA1029986
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/TA1046608/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="TA1046608"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                TA1046608
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/US41690/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="US41690"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                US41690
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/US176354/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="US176354"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                US176354
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/US378013/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="US378013"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                US378013
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/US483886/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="US483886"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                US483886
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/US484955/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="US484955"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                US484955
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/adding_unit_tests/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="adding_unit_tests"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                adding_unit_tests
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/asssh01_csrf/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="asssh01_csrf"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                asssh01_csrf
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/asssh01_v600/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="asssh01_v600"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                asssh01_v600
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/billing/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="billing"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                billing
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/caw2017.110217/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="caw2017.110217"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                caw2017.110217
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/caw2017.110917/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="caw2017.110917"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                caw2017.110917
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/ci_ci/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="ci_ci"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                ci_ci
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/ci/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="ci"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                ci
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/dummy_1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="dummy_1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                dummy_1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/filter_login/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="filter_login"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                filter_login
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/fix_robot_test_saas/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="fix_robot_test_saas"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                fix_robot_test_saas
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/for_demo/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="for_demo"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                for_demo
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/golro08-patch-1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="golro08-patch-1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                golro08-patch-1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/master_asssh01/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="master_asssh01"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master_asssh01
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/ReleaseAutomation/rp-main/blob/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/merge-to-master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="merge-to-master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                merge-to-master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/nightly/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="nightly"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                nightly
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/old-ci/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="old-ci"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                old-ci
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/old-nightly/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="old-nightly"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                old-nightly
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/plugins_dto_omri-2/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="plugins_dto_omri-2"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                plugins_dto_omri-2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-5904-TA895030/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-5904-TA895030"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-5904-TA895030
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-5907-revert-5904-TA895030/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-5907-revert-5904-TA895030"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-5907-revert-5904-TA895030
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-5910-US424537/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-5910-US424537"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-5910-US424537
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-5942-TA925453_1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-5942-TA925453_1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-5942-TA925453_1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-6020-installer_to_enable_tar_cds/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-6020-installer_to_enable_tar_cds"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-6020-installer_to_enable_tar_cds
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-6117-US412587/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-6117-US412587"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-6117-US412587
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/revert-6137-revert-6117-US412587/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="revert-6137-revert-6117-US412587"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                revert-6137-revert-6117-US412587
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/s_a_m_l_fix/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="s_a_m_l_fix"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                s_a_m_l_fix
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/saas-production_asssh01/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="saas-production_asssh01"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                saas-production_asssh01
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/saas-production/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="saas-production"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                saas-production
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/staging-1588/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="staging-1588"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                staging-1588
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/toggle_disable/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="toggle_disable"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                toggle_disable
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/update_docker_file_for_newrelic/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="update_docker_file_for_newrelic"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                update_docker_file_for_newrelic
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/us378013/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="us378013"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                us378013
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v600/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v600"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v600
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v610/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v610"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v610
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v620-beta1/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v620-beta1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v620-beta1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v620/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v620"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v620
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v630-beta/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v630-beta"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v630-beta
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v630-beta2/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v630-beta2"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v630-beta2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v630/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v630"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v630
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v631/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v631"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v631
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v640_asssh01/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v640_asssh01"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v640_asssh01
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v640/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v640"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v640
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v650ga-Omri/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v650ga-Omri"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v650ga-Omri
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v650ga/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v650ga"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v650ga
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v650/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v650"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v650
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v660ga/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v660ga"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v660ga
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v670-beta/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v670-beta"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v670-beta
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ReleaseAutomation/rp-main/blob/v670ga/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot"
               data-name="v670ga"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                v670ga
              </span>
            </a>
        </div>

          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="/XDF/MCXVnIEPmRiXtfIpzyF6WEfEePND09Prr+TAKdJp+cHBNFFzddAqY4X3waUKRDXf4NQnjvS0KD9nFnKnA==" /></div>
          <svg aria-hidden="true" class="octicon octicon-git-branch select-menu-item-icon" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master">
            <input type="hidden" name="path" id="path" value="integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot">
</form>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="BtnGroup float-right">
      <a href="/ReleaseAutomation/rp-main/find/master"
            class="js-pjax-capture-input btn btn-sm BtnGroup-item"
            data-pjax
            data-hotkey="t">
        Find file
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
    </div>
    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main"><span>rp-main</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main/tree/master/integrationTests"><span>integrationTests</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main/tree/master/integrationTests/src"><span>src</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main/tree/master/integrationTests/src/test"><span>test</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main/tree/master/integrationTests/src/test/release-planning"><span>release-planning</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/ReleaseAutomation/rp-main/tree/master/integrationTests/src/test/release-planning/UAT_Scenarios"><span>UAT_Scenarios</span></a></span><span class="separator">/</span><strong class="final-path">02_Release_Manager.robot</strong>
    </div>
  </div>


  <include-fragment class="commit-tease" src="/ReleaseAutomation/rp-main/contributors/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot">
    <div>
      Fetching contributors&hellip;
    </div>

    <div class="commit-tease-contributors">
      <img alt="" class="loader-loading float-left" height="16" src="https://assets.github-isl-01.ca.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
      <span class="loader-error">Cannot retrieve contributors at this time</span>
    </div>
</include-fragment>

  <div class="file">
    <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/ReleaseAutomation/rp-main/raw/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/ReleaseAutomation/rp-main/blame/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/ReleaseAutomation/rp-main/commits/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="https://desktop.github.com"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:mac">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
        </a>

        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/edit/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="inline-form js-update-url-with-hash" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="c9rf3qgZcYPG9NqdnSTNtPEawPSHBKEi+GVclC2bCemaBh9COQWzyzlQJzMoUfMet6AAN2BqG4HQzGaNvVx6lw==" /></div>
          <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
            aria-label="Edit this file" data-hotkey="e" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
          </button>
</form>        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ReleaseAutomation/rp-main/delete/master/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="2f+Gady/XmbXyC5gfyjGVPNjnj6TLAl8lF2PxDlin1hJa7uFeG9n/qwy1ahpVZpOMqYS2D5XJGrT4bPyeYGiZA==" /></div>
          <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Delete this file" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
          </button>
</form>  </div>

  <div class="file-info">
      358 lines (300 sloc)
      <span class="file-info-divider"></span>
    18.1 KB
  </div>
</div>

    

  <div itemprop="text" class="blob-wrapper data type-robotframework">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-s">*** Settings ***</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">Documentation     A testing suite for track design</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"></span><span class="pl-k">Force Tags</span>    PROGRESSION  release  sanity  premonly  pluginsRequired</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Variables</span>     <span class="pl-en">${<span class="pl-en">RESOURCES</span>}</span>/sut.py</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/releases_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/phases_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/applications_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/environments_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/tasks_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/execution_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/track_api.robot</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/application_versions_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/users_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/content_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Resource</span>      <span class="pl-en">${<span class="pl-en">LIBRARIES</span>}</span>/content_report_rest_api.robot</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Library</span>       com.ca.rp.robot.NolioDtoUtils</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Library</span>       com.ca.cdd.commons.robot.RobotJsonUtils</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Test Timeout</span>  5 minutes</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Suite Setup</span>  Release Manager Persona Setup</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Suite Teardown</span>  Release Manager Persona Teardown</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-s">*** Test Cases ***</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">01</span> - create applications environments and users</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">    create applications</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">    create environments and assign to applications</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">    create users</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">02</span> - create release with phases and tasks</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">    create release</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">    assign applications to release</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">    create phases</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">    assign environment to phases</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">    assign owner to phases</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">    on first phase create task with owner and paralel container without owners</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">    on second phase sync tasks with owners</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">    on third phase paralel container tasks with owner</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">03</span> - create releases from template</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">    Duplicate Release with Same Name and New Version</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">    Duplicate Release with Same Version and New Name</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">    Duplicate Release with New Version and New Name</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">04</span> - create application version</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">    create application version</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">    create manual content for application version</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">    Assign Application Versions to first task on first phase</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">    Assign Application Versions to all tasks on second phase</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">05</span> - set dependencies between applications versions</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">    set dependencies between applications versions on APP0 and APP1</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">    verify there is no conflicts</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">    set dependencies between applications versions on APP2 and APP1</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">    verify there is conflicts</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">06</span> - Create Track With Milestones</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">    Create Track With Milestones</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">    add releases to track and verify phases mapped to MS</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">    Verfiy all Releass are Assigned To Track</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">07</span> - Reports Validation</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">    validate Content Report</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">    valdate Application Report</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">    valdate Environment Report</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line"><span class="pl-s">*** Keywords ***</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Release Manager Persona Setup</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">    Init Http Client  <span class="pl-en">${<span class="pl-en">HOST</span>}</span>  <span class="pl-en">${<span class="pl-en">PORT</span>}</span>  <span class="pl-en">${<span class="pl-en">SCHEME</span>}</span>  <span class="pl-en">${<span class="pl-en">USER</span>}</span>  <span class="pl-en">${<span class="pl-en">PASSWORD</span>}</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">now1</span>}</span>=  Get Time  epoch</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">now</span>}</span>  <span class="pl-en">${<span class="pl-en">now1</span>}</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Release Manager Persona Teardown</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">    Run Keyword If All Tests Passed  delete users</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">    Run Keyword If All Tests Passed  delete environemnts</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">    Run Keyword If All Tests Passed  delete applications</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">    Run Keyword If All Tests Passed  delete releases</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">    Run Keyword If All Tests Passed  delete tracks</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create applications</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">appsList</span>}</span>=  create list</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">appDTO</span>}</span>=  Create application by name &quot;Release Manager App<span class="pl-en">${<span class="pl-en">i</span>}</span> <span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; description &quot;Release Manager App for testing release manager persona&quot;</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">    \  Append To List  <span class="pl-en">${<span class="pl-en">appsList</span>}</span>  <span class="pl-en">${<span class="pl-en">appDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">appsList</span>}</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create environments and assign to applications</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">env_counter</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">envsList</span>}</span>=  create list</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">env_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">envDTO</span>}</span>=  Create Environment by name &quot;Env<span class="pl-en">${<span class="pl-en">i</span>}</span> <span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; description &quot;environment for testing release manager persona&quot; under application with id &quot;<span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">    \  Append To List  <span class="pl-en">${<span class="pl-en">envsList</span>}</span>  <span class="pl-en">${<span class="pl-en">envDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">    \  assign applicatio to environment  <span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}]</span>}</span>  <span class="pl-en">${<span class="pl-en">i</span>}</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">envsList</span>}</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line"><span class="pl-k">assign applicatio to environment</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">[Arguments]</span>  <span class="pl-en">${<span class="pl-en">envDTO</span>}</span>  <span class="pl-en">${<span class="pl-en">index</span>}</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">    \  Run Keyword if  <span class="pl-en">${<span class="pl-en">i</span>}</span> &lt;&gt; <span class="pl-en">${<span class="pl-en">index</span>}</span>  Assign Existing Environment To Application  <span class="pl-en">${<span class="pl-en">envDTO</span>}</span>  <span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create users</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">releaseOwner</span>}</span>=  Create a User with Role &quot;DESIGNER&quot; by first name &quot;Rowner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; last name &quot;RMowner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; email &quot;RMowner<span class="pl-en">${<span class="pl-en">now</span>}</span>@ca.com&quot; password &quot;AA@123tt&quot;</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">    User by id &quot;<span class="pl-en">${<span class="pl-en">releaseOwner.id</span>}</span>&quot; exists</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">releaseOwner</span>}</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">phaseOwner</span>}</span>=  Create a User with Role &quot;DESIGNER&quot; by first name &quot;Powner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; last name &quot;Powner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; email &quot;Powner<span class="pl-en">${<span class="pl-en">now</span>}</span>@ca.com&quot; password &quot;AA@123tt&quot;</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">    User by id &quot;<span class="pl-en">${<span class="pl-en">phaseOwner.id</span>}</span>&quot; exists</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">phaseOwner</span>}</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">taskOwner</span>}</span>=  Create a User with Role &quot;DESIGNER&quot; by first name &quot;Towner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; last name &quot;Towner<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; email &quot;Towner<span class="pl-en">${<span class="pl-en">now</span>}</span>@ca.com&quot; password &quot;AA@123tt&quot;</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">    User by id &quot;<span class="pl-en">${<span class="pl-en">taskOwner.id</span>}</span>&quot; exists</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">taskOwner</span>}</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create release</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">phaseAmount</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dto_releaseEnv</span>}</span>=  Create a release by name &quot;Release Manager&quot; description &quot;Release Manager&quot; version &quot;1.0 <span class="pl-en">${<span class="pl-en">now</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">release</span>}</span>  <span class="pl-en">${<span class="pl-en">dto_releaseEnv</span>}</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">    Update release with multiple owners  <span class="pl-en">${<span class="pl-en">release</span>}</span>  <span class="pl-en">${<span class="pl-en">releaseOwner.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line"><span class="pl-k">assign applications to release</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">appListIDs</span>}</span>=  create list</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">    \  append to list  <span class="pl-en">${<span class="pl-en">appListIDs</span>}</span>  <span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">    Assign Multiple Applications to Release  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">@{<span class="pl-en">appListIDs</span>}</span></td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create phases</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span>=  Create first phase by name &quot;first phase&quot; description &quot;Release Manager tests&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">rootPhase</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">phase_counter</span>}</span>  <span class="pl-c1">2</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">phasesList</span>}</span>=  create list  <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">phasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">phase_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">lastPhaseId</span>}</span>=  Set Variable   <span class="pl-en">${<span class="pl-en">phaseDTO.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span>=  Create non first phase by name &quot;phase_<span class="pl-en">${<span class="pl-en">i</span>}</span>&quot; previous phase ID &quot;<span class="pl-en">${<span class="pl-en">lastPhaseId</span>}</span>&quot; description &quot;Release Manager tests&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">    \  Append To List  <span class="pl-en">${<span class="pl-en">phasesList</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">phasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line"><span class="pl-k">assign environment to phases</span></td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">phaseAmount</span>}</span>=  Get Length  <span class="pl-en">${<span class="pl-en">phasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">phaseAmount</span>}</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">    \  Assign Multiple Environments to Phase with method PATCH  <span class="pl-en">${<span class="pl-en">phasesList[${<span class="pl-en">i</span>}]</span>}</span>  <span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line"><span class="pl-k">assign owner to phases</span></td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">phase</span>}</span>  IN  <span class="pl-en">@{<span class="pl-en">phasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">    \  Update phase with multiple owners with method PATCH  <span class="pl-en">${<span class="pl-en">phase</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseOwner.id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line"><span class="pl-k">on first phase create task with owner and paralel container without owners</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span>=  Create a task by name &quot;task1 <span class="pl-en">${<span class="pl-en">now</span>}</span>&quot; description &quot;for testing&quot; at phase &quot;<span class="pl-en">${<span class="pl-en">phasesList[0].id</span>}</span>&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask</span>}</span>  <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">    private Update task with multiple owners  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.id</span>}</span>  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.name</span>}</span>  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.description</span>}</span>  <span class="pl-en">${<span class="pl-en">phasesList[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">taskOwner.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line"><span class="pl-c">    #   create parallel container tasks sync to previous task</span></td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">taskAmount</span>}</span>=  set variable  3</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">parallelTaskDTO</span>}</span>=  Create &quot;<span class="pl-en">${<span class="pl-en">taskAmount</span>}</span>&quot; parallel tasks sync to previous &quot;<span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.id</span>}</span>&quot; and &quot;<span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.name</span>}</span>&quot; task by name &quot;parallel task&quot; description &quot;parallel task&quot; at phase &quot;<span class="pl-en">${<span class="pl-en">phasesList[0].id</span>}</span>&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">firstPhaseParallelTasks</span>}</span>  <span class="pl-en">@{<span class="pl-en">parallelTaskDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line"><span class="pl-k">on second phase sync tasks with owners</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">task_counter</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">tasksLlist</span>}</span>=  Create sync &quot;<span class="pl-en">${<span class="pl-en">task_counter</span>}</span>&quot; tasks by name &quot;task&quot; description &quot;for Release MAnager tests&quot; at phase &quot;<span class="pl-en">${<span class="pl-en">phasesList[1].id</span>}</span>&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot; return task dto</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">secondPhaseSyncTasks</span>}</span>  <span class="pl-en">@{<span class="pl-en">tasksLlist</span>}</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">     <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">task_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line">    \  private Update task with multiple owners  <span class="pl-en">${<span class="pl-en">tasksLlist[${<span class="pl-en">i</span>}].id</span>}</span>  <span class="pl-en">${<span class="pl-en">tasksLlist[${<span class="pl-en">i</span>}].name</span>}</span>  <span class="pl-en">${<span class="pl-en">tasksLlist[${<span class="pl-en">i</span>}].description</span>}</span>  <span class="pl-en">${<span class="pl-en">phasesList[1].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">taskOwner.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line"><span class="pl-k">on third phase paralel container tasks with owner</span></td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">task_counter</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">parallelContainerDTO</span>}</span>=  Create paralel &quot;<span class="pl-en">${<span class="pl-en">task_counter</span>}</span>&quot; tasks by name &quot;parallel task&quot; description &quot;Release Manager persona task&quot; at phase &quot;<span class="pl-en">${<span class="pl-en">phasesList[2].id</span>}</span>&quot; at release &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot; return all task DTO</td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line">     <span class="pl-en">${<span class="pl-en">i</span>}</span>=  Set variable  0</td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">task_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">    \  private Update task with multiple owners  <span class="pl-en">${<span class="pl-en">parallelContainerDTO[${<span class="pl-en">i</span>}].id</span>}</span>  <span class="pl-en">${<span class="pl-en">parallelContainerDTO[${<span class="pl-en">i</span>}].name</span>}</span>  <span class="pl-en">${<span class="pl-en">parallelContainerDTO[${<span class="pl-en">i</span>}].description</span>}</span>  <span class="pl-en">${<span class="pl-en">phasesList[2].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">taskOwner.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Create Track With Milestones</span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#    [Arguments]  ${name}</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>  <span class="pl-c1">86400</span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">on_your_marks_due_date</span>}</span>=  Evaluate  (<span class="pl-en">${<span class="pl-en">now</span>}</span> + <span class="pl-c1">2</span> * <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>) * <span class="pl-c1">1000</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">get_set_due_date</span>}</span>=  Evaluate  (<span class="pl-en">${<span class="pl-en">now</span>}</span> + <span class="pl-c1">4</span> * <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>) * <span class="pl-c1">1000</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">go_due_date</span>}</span>=  Evaluate  (<span class="pl-en">${<span class="pl-en">now</span>}</span> + <span class="pl-c1">6</span> * <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>) * <span class="pl-c1">1000</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">milestones</span>}</span>=  Create Dictionary  MS1=<span class="pl-en">${<span class="pl-en">on_your_marks_due_date</span>}</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line">    ...                                MS2=<span class="pl-en">${<span class="pl-en">get_set_due_date</span>}</span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#    ...                                MS3=${go_due_date}</span></td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">production_start_date</span>}</span>=  Evaluate  (<span class="pl-en">${<span class="pl-en">now</span>}</span> + <span class="pl-c1">10</span> * <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>) * <span class="pl-c1">1000</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">production_end_date</span>}</span>=  Evaluate  (<span class="pl-en">${<span class="pl-en">now</span>}</span> + <span class="pl-c1">12</span> * <span class="pl-en">${<span class="pl-en">sec_in_day</span>}</span>) * <span class="pl-c1">1000</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dto</span>}</span>=  Create a track with milestones  Track.<span class="pl-en">${<span class="pl-en">now</span>}</span>  Track - Description  <span class="pl-en">${<span class="pl-en">production_start_date</span>}</span>  <span class="pl-en">${<span class="pl-en">production_end_date</span>}</span>  <span class="pl-en">${<span class="pl-en">milestones</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line">    Set Suite Variable  <span class="pl-en">${<span class="pl-en">the_track</span>}</span>  <span class="pl-en">${<span class="pl-en">dto</span>}</span></td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line">    Should Be Equal  <span class="pl-en">${<span class="pl-en">the_track.name</span>}</span>  Track.<span class="pl-en">${<span class="pl-en">now</span>}</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">sorted_milestones</span>}</span>=  Sort Named Identifiables By Name  <span class="pl-en">@{<span class="pl-en">the_track.milestones</span>}</span></td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">    Set Suite Variable  <span class="pl-en">${<span class="pl-en">MS1</span>}</span>  <span class="pl-en">${<span class="pl-en">sorted_milestones[0]</span>}</span></td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">    Set Suite Variable  <span class="pl-en">${<span class="pl-en">MS2</span>}</span>  <span class="pl-en">${<span class="pl-en">sorted_milestones[1]</span>}</span></td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#    Set Suite Variable  ${on_your_marks_milestone}  ${sorted_milestones[2]}</span></td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Duplicate Release with Same Name and New Version</span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">new_version</span>}</span>=  Catenate  SEPARATOR=.  <span class="pl-en">${<span class="pl-en">release.version</span>}</span>  <span class="pl-c1">1</span></td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dto_result</span>}</span>=  Duplicate a release by name and version  <span class="pl-en">${<span class="pl-en">release.name</span>}</span>  <span class="pl-en">${<span class="pl-en">new_version</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">dupRelease1</span>}</span>  <span class="pl-en">${<span class="pl-en">dto_result</span>}</span></td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line"><span class="pl-k">    Then</span> Should be true  <span class="pl-en">${<span class="pl-en">dto_result.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Duplicate Release with Same Version and New Name</span></td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">new_name</span>}</span>=  Catenate  SEPARATOR=-  <span class="pl-en">${<span class="pl-en">release.name</span>}</span>  Dup1</td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dto_result</span>}</span>=  Duplicate a release by name and version  <span class="pl-en">${<span class="pl-en">new_name</span>}</span>  <span class="pl-en">${<span class="pl-en">release.version</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">dupRelease2</span>}</span>  <span class="pl-en">${<span class="pl-en">dto_result</span>}</span></td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line"><span class="pl-k">    Then</span> Should be true  <span class="pl-en">${<span class="pl-en">dto_result.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Duplicate Release with New Version and New Name</span></td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">new_name</span>}</span>=  Catenate  SEPARATOR=-  <span class="pl-en">${<span class="pl-en">release.name</span>}</span>  Dup2</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">new_version</span>}</span>=  Catenate  SEPARATOR=.  <span class="pl-en">${<span class="pl-en">release.version</span>}</span>  <span class="pl-c1">2</span></td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dto_result</span>}</span>=  Duplicate a release by name and version  <span class="pl-en">${<span class="pl-en">new_name</span>}</span>  <span class="pl-en">${<span class="pl-en">new_version</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">${<span class="pl-en">dupRelease3</span>}</span>  <span class="pl-en">${<span class="pl-en">dto_result</span>}</span></td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line"><span class="pl-k">    Then</span> Should be true  <span class="pl-en">${<span class="pl-en">dto_result.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create application version</span></td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">appsVersionList</span>}</span>=  create list</td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">appVersionDTO</span>}</span>=  Create application version by application id &quot;<span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span>&quot; release id &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot; and version &quot;v<span class="pl-en">${<span class="pl-en">i</span>}</span>.<span class="pl-en">${<span class="pl-en">now</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line">    \  Append To List  <span class="pl-en">${<span class="pl-en">appsVersionList</span>}</span>  <span class="pl-en">${<span class="pl-en">appVersionDTO</span>}</span></td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">appsVersionList</span>}</span></td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line"><span class="pl-k">set dependencies between applications versions on APP0 and APP1</span></td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">status</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">    Set application version dependencies  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[1]</span>}</span>  <span class="pl-en">${<span class="pl-en">status</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[0].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dependedOnDTO</span>}</span>=  Private Get application version  <span class="pl-en">${<span class="pl-en">appsVersionList[1].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line">    Should Be Equal  <span class="pl-en">${<span class="pl-en">appsVersionList[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">dependedOnDTO.dependsOn[0].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line"><span class="pl-k">set dependencies between applications versions on APP2 and APP1</span></td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line">    set test variable  <span class="pl-en">${<span class="pl-en">status</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line">    Set application version dependencies  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[2]</span>}</span>  <span class="pl-en">${<span class="pl-en">status</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[1].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">dependedOnDTO</span>}</span>=  Private Get application version  <span class="pl-en">${<span class="pl-en">appsVersionList[1].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code blob-code-inner js-file-line">    Should Be Equal  <span class="pl-en">${<span class="pl-en">appsVersionList[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">dependedOnDTO.dependsOn[0].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code blob-code-inner js-file-line"><span class="pl-k">create manual content for application version</span></td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">manualContent</span>}</span>=  create list</td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">content</span>}</span>=  Create a manual content for content source id &quot;<span class="pl-en">${<span class="pl-en">appsVersionList[${<span class="pl-en">i</span>}].contentSources[0].id</span>}</span>&quot; with application version id &quot;<span class="pl-en">${<span class="pl-en">appsVersionList[${<span class="pl-en">i</span>}].id</span>}</span>&quot; with release id &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot; and content &quot;manual content on app<span class="pl-en">${<span class="pl-en">i</span>}</span> from robot test&quot;</td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code blob-code-inner js-file-line">    \  Append To List  <span class="pl-en">${<span class="pl-en">manualContent</span>}</span>  <span class="pl-en">${<span class="pl-en">content</span>}</span></td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">manualContent</span>}</span></td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Assign Application Versions to first task on first phase</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span>=  Get task by ID  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.id</span>}</span>  <span class="pl-en">${<span class="pl-en">firstPhaseSingleTask.phaseId</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code blob-code-inner js-file-line">    Assign Application Versions to Task  <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[0].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Assign Application Versions to all tasks on second phase</span></td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">task</span>}</span>  IN  <span class="pl-en">@{<span class="pl-en">secondPhaseSyncTasks</span>}</span></td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span>=  Get task by ID  <span class="pl-en">${<span class="pl-en">task.id</span>}</span>  <span class="pl-en">${<span class="pl-en">task.phaseId</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code blob-code-inner js-file-line">    \  Assign Application Versions to Task  <span class="pl-en">${<span class="pl-en">taskDTO</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[2].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code blob-code-inner js-file-line"><span class="pl-k">add releases to track and verify phases mapped to MS</span></td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">@{<span class="pl-en">releasesList</span>}</span>=  create list  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">dupRelease1.id</span>}</span>  <span class="pl-en">${<span class="pl-en">dupRelease2.id</span>}</span>  <span class="pl-en">${<span class="pl-en">dupRelease3.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code blob-code-inner js-file-line">    set suite variable  <span class="pl-en">@{<span class="pl-en">releasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">releaseID</span>}</span>  IN  <span class="pl-en">@{<span class="pl-en">releasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">phasesDTO</span>}</span>=  Get All Phases in Release by id &quot;<span class="pl-en">${<span class="pl-en">releaseID</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">milestones_assignments</span>}</span>=  Create Dictionary  <span class="pl-en">${<span class="pl-en">MS1.id</span>}</span>=<span class="pl-en">${<span class="pl-en">phasesDTO[1].id</span>}</span>  <span class="pl-en">${<span class="pl-en">MS2.id</span>}</span>=<span class="pl-en">${<span class="pl-en">phasesDTO[2].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code blob-code-inner js-file-line">    \  Assign release to track  <span class="pl-en">${<span class="pl-en">the_track.id</span>}</span>  <span class="pl-en">${<span class="pl-en">releaseID</span>}</span>  <span class="pl-en">${<span class="pl-en">phasesDTO[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">milestones_assignments</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">the_release</span>}</span>=  Release by id &quot;<span class="pl-en">${<span class="pl-en">releaseID</span>}</span>&quot; exists</td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code blob-code-inner js-file-line">    \  Verify Phase Has Milestones  <span class="pl-en">${<span class="pl-en">phasesDTO[1].id</span>}</span>  <span class="pl-en">${<span class="pl-en">the_release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">MS1.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code blob-code-inner js-file-line">    \  Verify Phase Has Milestones  <span class="pl-en">${<span class="pl-en">phasesDTO[2].id</span>}</span>  <span class="pl-en">${<span class="pl-en">the_release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">MS2.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">productioPhaseDTO</span>}</span>=  Get phase by ID  <span class="pl-en">${<span class="pl-en">phasesDTO[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">releaseID</span>}</span></td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code blob-code-inner js-file-line">    \  Verify Phase is Production  <span class="pl-en">${<span class="pl-en">productioPhaseDTO</span>}</span>  <span class="pl-en">${<span class="pl-en">the_track.productionStartDate</span>}</span>  <span class="pl-en">${<span class="pl-en">the_track.productionEndDate</span>}</span></td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code blob-code-inner js-file-line">    \  Verify No Conflicts  <span class="pl-en">${<span class="pl-en">the_release</span>}</span></td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Verfiy all Releass are Assigned To Track</span></td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">track</span>}</span>=  get track by id  <span class="pl-en">${<span class="pl-en">the_track.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">releaseAmount</span>}</span>=  Get Length  <span class="pl-en">${<span class="pl-en">releasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">trackReleasesAmount</span>}</span>=  Get Length  <span class="pl-en">${<span class="pl-en">track.releases</span>}</span></td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code blob-code-inner js-file-line">    Should Be Equal  <span class="pl-en">${<span class="pl-en">trackReleasesAmount</span>}</span>  <span class="pl-en">${<span class="pl-en">releaseAmount</span>}</span></td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">releaseAmount</span>}</span></td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code blob-code-inner js-file-line">    \  Should Be Equal  <span class="pl-en">${<span class="pl-en">track.releases[${<span class="pl-en">i</span>}].id</span>}</span>  <span class="pl-en">${<span class="pl-en">releasesList[${<span class="pl-en">i</span>}]</span>}</span></td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Verify Phase Has Milestones</span></td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">[Arguments]</span>  <span class="pl-en">${<span class="pl-en">phase_id</span>}</span>  <span class="pl-en">${<span class="pl-en">release_id</span>}</span>  <span class="pl-en">@{<span class="pl-en">expected_milestone_ids</span>}</span></td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">phase</span>}</span>=  Get phase by ID  <span class="pl-en">${<span class="pl-en">phase_id</span>}</span>  <span class="pl-en">${<span class="pl-en">release_id</span>}</span></td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">expected_milestone_count</span>}</span>=  Get Length  <span class="pl-en">${<span class="pl-en">expected_milestone_ids</span>}</span></td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">actual_milestone_count</span>}</span>=  Get Length  <span class="pl-en">${<span class="pl-en">phase.milestonePhaseRelations</span>}</span></td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code blob-code-inner js-file-line">    Should Be Equal As Integers  <span class="pl-en">${<span class="pl-en">expected_milestone_count</span>}</span>  <span class="pl-en">${<span class="pl-en">actual_milestone_count</span>}</span></td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">actual_milestone_releation</span>}</span>  in  <span class="pl-en">@{<span class="pl-en">phase.milestonePhaseRelations</span>}</span></td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">actual_milestone</span>}</span>=  Set Variable  <span class="pl-en">${<span class="pl-en">actual_milestone_releation.milestone</span>}</span></td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code blob-code-inner js-file-line">    \  List Should Contain Value  <span class="pl-en">${<span class="pl-en">expected_milestone_ids</span>}</span>  <span class="pl-en">${<span class="pl-en">actual_milestone.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code blob-code-inner js-file-line"><span class="pl-k">Verify No Conflicts</span></td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">[Arguments]</span>  <span class="pl-en">${<span class="pl-en">release</span>}</span></td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code blob-code-inner js-file-line">    Should Be Empty  <span class="pl-en">${<span class="pl-en">release.conflicts</span>}</span></td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code blob-code-inner js-file-line"><span class="pl-k">verify there is no conflicts</span></td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code blob-code-inner js-file-line">   <span class="pl-en">${<span class="pl-en">conflictsDTO</span>}</span>=  Get application version conflicts by releaseId  <span class="pl-en">${<span class="pl-en">release.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code blob-code-inner js-file-line">   Should Be Empty  <span class="pl-en">${<span class="pl-en">conflictsDTO.applicationVersionConflicts</span>}</span></td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   Should Be Equal As Integers   ${conflictsDTO.applicationVersion.id}  ${appsVersionList[1].id}</span></td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   ${length}=  Get length  ${conflictsDTO.conflicts}</span></td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#   Should Be Equal As Integers  ${length}  3</span></td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code blob-code-inner js-file-line"><span class="pl-k">verify there is conflicts</span></td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code blob-code-inner js-file-line">   <span class="pl-en">${<span class="pl-en">conflictsDTO</span>}</span>=  get release conflicts  <span class="pl-en">${<span class="pl-en">appsVersionList[2].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code blob-code-inner js-file-line">   Should Be Equal As Integers   <span class="pl-en">${<span class="pl-en">conflictsDTO.applicationVersion.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsVersionList[2].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code blob-code-inner js-file-line">   <span class="pl-en">${<span class="pl-en">length</span>}</span>=  Get length  <span class="pl-en">${<span class="pl-en">conflictsDTO.conflicts</span>}</span></td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code blob-code-inner js-file-line">   Should Be Equal As Integers  <span class="pl-en">${<span class="pl-en">length</span>}</span>  <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code blob-code-inner js-file-line"><span class="pl-k">validate Content Report</span></td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">appContent</span>}</span>=  Get content items by release id &quot;<span class="pl-en">${<span class="pl-en">release.id</span>}</span>&quot; and by application id &quot;<span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span>&quot; or free text &quot;&quot;</td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code blob-code-inner js-file-line">    \  Should Be Equal  <span class="pl-en">${<span class="pl-en">appContent[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">manualContent[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code blob-code-inner js-file-line">    \  Should Be Equal  <span class="pl-en">${<span class="pl-en">appContent[0].content</span>}</span>  <span class="pl-en">${<span class="pl-en">manualContent[${<span class="pl-en">i</span>}].content</span>}</span></td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code blob-code-inner js-file-line">    \  Should Be Equal  <span class="pl-en">${<span class="pl-en">appContent[0].contentSourceId</span>}</span>  <span class="pl-en">${<span class="pl-en">manualContent[${<span class="pl-en">i</span>}].contentSourceId</span>}</span></td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code blob-code-inner js-file-line"><span class="pl-k">valdate Application Report</span></td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">appReport</span>}</span>=  Get Application Report By Id  <span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span>=  Get phase by ID  <span class="pl-en">${<span class="pl-en">phasesList[${<span class="pl-en">i</span>}].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">appReport.environmentVersions[0].application.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">appReport.environmentVersions[0].environment.id</span>}</span>  <span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">appReport.environmentVersions[0].phase.id</span>}</span>  <span class="pl-en">${<span class="pl-en">phasesList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal As Strings  <span class="pl-en">${<span class="pl-en">appReport.environmentVersions[0].status</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseDTO.approvalGate</span>}</span></td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> &gt; <span class="pl-c1">0</span>   Should Be Empty  <span class="pl-en">${<span class="pl-en">appReport.environmentVersions</span>}</span></td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code blob-code-inner js-file-line"><span class="pl-k">valdate Environment Report</span></td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code blob-code-inner js-file-line">    <span class="pl-en">${<span class="pl-en">phaseDTO</span>}</span>=  Get phase by ID  <span class="pl-en">${<span class="pl-en">phasesList[0].id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">env_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code blob-code-inner js-file-line">    \  <span class="pl-en">${<span class="pl-en">envReport</span>}</span>=  Get Single Environment Report  <span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}].id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">envReport.records[${<span class="pl-en">i</span>}].environment.id</span>}</span>  <span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">envReport.records[${<span class="pl-en">i</span>}].application.id</span>}</span>  <span class="pl-en">${<span class="pl-en">appsList[0].id</span>}</span></td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">envReport.records[${<span class="pl-en">i</span>}].release.id</span>}</span>  <span class="pl-en">${<span class="pl-en">release.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal  <span class="pl-en">${<span class="pl-en">envReport.records[${<span class="pl-en">i</span>}].phase.id</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseDTO.id</span>}</span></td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> == <span class="pl-c1">0</span>  Should Be Equal As Strings  <span class="pl-en">${<span class="pl-en">envReport.records[${<span class="pl-en">i</span>}].status</span>}</span>  <span class="pl-en">${<span class="pl-en">phaseDTO.approvalGate</span>}</span></td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code blob-code-inner js-file-line">    \  Run Keyword If  <span class="pl-en">${<span class="pl-en">i</span>}</span> &gt; <span class="pl-c1">0</span>   Should Be Empty  <span class="pl-en">${<span class="pl-en">envReport.records</span>}</span></td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete users</span></td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code blob-code-inner js-file-line">    Delete a user  <span class="pl-en">${<span class="pl-en">releaseOwner.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code blob-code-inner js-file-line">    Delete a user  <span class="pl-en">${<span class="pl-en">phaseOwner.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code blob-code-inner js-file-line">    Delete a user  <span class="pl-en">${<span class="pl-en">taskOwner.id</span>}</span>  ok</td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete environemnts</span></td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code blob-code-inner js-file-line">    \  delete environments from application  <span class="pl-en">${<span class="pl-en">i</span>}</span></td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete environments from application</span></td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">[Arguments]</span>  <span class="pl-en">${<span class="pl-en">appIndex</span>}</span></td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">env_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code blob-code-inner js-file-line">    \  Delete environment by id &quot;<span class="pl-en">${<span class="pl-en">envsList[${<span class="pl-en">i</span>}].id</span>}</span>&quot; and application id &quot;<span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">appIndex</span>}].id</span>}</span>&quot; expected message &quot;ok&quot;</td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete applications</span></td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code blob-code-inner js-file-line">    :for  <span class="pl-en">${<span class="pl-en">i</span>}</span>  IN RANGE  <span class="pl-en">${<span class="pl-en">app_counter</span>}</span></td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code blob-code-inner js-file-line">    \  Delete application by id &quot;<span class="pl-en">${<span class="pl-en">appsList[${<span class="pl-en">i</span>}].id</span>}</span>&quot;</td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete releases</span></td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code blob-code-inner js-file-line">    Delete releases by ids  ok  <span class="pl-en">@{<span class="pl-en">releasesList</span>}</span></td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code blob-code-inner js-file-line"><span class="pl-k">delete tracks</span></td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code blob-code-inner js-file-line">    delete track  <span class="pl-en">${<span class="pl-en">the_track.id</span>}</span>  ok</td>
      </tr>
</table>

  <div class="BlobToolbar position-absolute js-file-line-actions dropdown js-menu-container js-select-menu d-none" aria-hidden="true">
    <button class="btn-octicon ml-0 px-2 p-0 bg-white border border-gray-dark rounded-1 dropdown-toggle js-menu-target" id="js-file-line-action-button" type="button" aria-expanded="false" aria-haspopup="true" aria-label="Inline file action toolbar" aria-controls="inline-file-actions">
      <svg aria-hidden="true" class="octicon octicon-kebab-horizontal" height="16" version="1.1" viewBox="0 0 13 16" width="13"><path fill-rule="evenodd" d="M1.5 9a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/></svg>
    </button>
    <div class="dropdown-menu-content js-menu-content" id="inline-file-actions">
      <ul class="BlobToolbar-dropdown dropdown-menu dropdown-menu-se mt-2">
        <li><a class="js-zeroclipboard dropdown-item" style="cursor:pointer;" id="js-copy-lines" data-original-text="Copy lines">Copy lines</a></li>
        <li><a class="js-zeroclipboard dropdown-item" id= "js-copy-permalink" style="cursor:pointer;" data-original-text="Copy permalink">Copy permalink</a></li>
        <li><a href="/ReleaseAutomation/rp-main/blame/185b07edcdbffd5e8c2216625b626f6fd78b138f/integrationTests/src/test/release-planning/UAT_Scenarios/02_Release_Manager.robot" class="dropdown-item js-update-url-with-hash" id="js-view-git-blame">View git blame</a></li>
          <li><a href="/ReleaseAutomation/rp-main/issues/new" class="dropdown-item" id="js-new-issue">Open new issue</a></li>
      </ul>
    </div>
  </div>

  </div>

  </div>

  <button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
  <div id="jump-to-line" style="display:none">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
      <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
      <button type="submit" class="btn">Go</button>
</form>  </div>

  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>

    </div>
  </div>

  </div>

      
<div class="footer container-lg px-3" role="contentinfo">
  <div class="position-relative d-flex flex-justify-between py-6 mt-6 f6 text-gray border-top border-gray-light ">
    <ul class="list-style-none d-flex flex-wrap ">
      <li class="mr-3">&copy; 2018 <span title="0.20603s from localhost">GitHub</span>, Inc.</li>
        <li class="mr-3"><a href="https://help.github.com/enterprise/2.12">Help</a></li>
          <li class="mr-3"><a href="mailto:enterprise@github.com">Support</a></li>
    </ul>

    <a href="https://github-isl-01.ca.com" aria-label="Homepage" class="footer-octicon" title="GitHub Enterprise Version 2.12.5">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="list-style-none d-flex flex-wrap ">
      <li class="mr-3"><a href="https://developer.github.com/enterprise/2.12" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li class="mr-3"><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li class="mr-3"><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li class="mr-3"><a href="https://github.com/blog">Blog</a></li>
        <li><a href="https://github.com/about">About</a></li>

    </ul>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
    You can't perform that action at this time.
  </div>


    
    <script crossorigin="anonymous" integrity="sha256-F7VsAbjYEuEdAvWDOjCP6snWeqx5tkyuQYm7fPXaSw0=" src="https://assets.github-isl-01.ca.com/assets/frameworks-17b56c01b8d812e11d02f5833a308feac9d67aac79b64cae4189bb7cf5da4b0d.js"></script>
    
    <script async="async" crossorigin="anonymous" integrity="sha256-FkiSCsYp+e16LhxCS7w3bXD7W721erinB1mb5+w3rk0=" src="https://assets.github-isl-01.ca.com/assets/github-1648920ac629f9ed7a2e1c424bbc376d70fb5bbdb57ab8a707599be7ec37ae4d.js"></script>
    
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>


  </body>
</html>
