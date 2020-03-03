<p align="center">
	<img width="130px;" src="https://game.42sp.org.br/static/assets/images/42_logo_black.svg" align="center" alt="42" />&nbsp;&nbsp;&nbsp;
	<img width="130px" src="https://game.42sp.org.br/static/assets/achievements/ft_serverm.png" align="center" alt="ft_server" />
	<h1 align="center">ft_server</h1>
</p>
<p align="center">
	<img src="https://img.shields.io/badge/Success-100/100_✓-gray.svg?colorA=61c265&colorB=4CAF50&style=for-the-badge">
	<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
	<img src="https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white">
</p>

<p align="center">
	<b><i>Development repository for the 42cursus ft_server project @ 42 São Paulo</i></b><br>
</p>

<p align="center">
	<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/iwillenshofer/ft_server?color=blueviolet" />
	<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/iwillenshofer/ft_server?color=blue" />
	<img alt="GitHub top language" src="https://img.shields.io/github/commit-activity/t/iwillenshofer/ft_server?color=brightgreen" />
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/iwillenshofer/ft_server?color=brightgreen" />
</p>
<br>

> _This topic is intended to introduce you to system administration. It will make you aware of the importance of using scripts to automate your tasks. For that, you will discover the "docker" technology and use it to install a complete web server. This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database._

[Download the Subject ⤓](en.subject.pdf)

<br>

<p align="center">
	<table>
		<tr>
			<td><b>Est. Time</b></td>
			<td><b>Skills</b></td>
			<td><b>Difficulty</b></td>
		</tr>
		<tr>
			<td valign="top">84 hours</td>
			<td valign="top">
<img src="https://img.shields.io/badge/Network & system administration-555">
<img src="https://img.shields.io/badge/Rigor-555">
			</td>
			<td valign="top"> 1722 XP</td>
		</tr>
	</table>
</p>

<br>

### Usage
```bash
#you need docker installed in your system
$ docker build -t ft_server_img .
$ docker run --name ft_server -p 80:80 -p 443:443 -d ft_server_img
$ docker exec -it ft_server /bin/bash

#server is listening on ports 80 and 443. Just access them with your favorite browser.
```
