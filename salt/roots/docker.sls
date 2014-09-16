docker_repo:
  pkgrepo.managed:
    - humanname: Docker
    - name: "deb https://get.docker.io/ubuntu docker main"
    - file: /etc/apt/sources.list.d/docker.list
    - key_id: 36A1D7869245C8950F966E92D8576A8BA88D21E9
    - keyserver: keyserver.ubuntu.com
    - require_in:
        - pkg: lxc-docker

docker_group:
  group.present:
    - name: docker
    - addusers: {{ pillar.get('users', {}).keys() }}

lxc-docker:
  pkg.installed
