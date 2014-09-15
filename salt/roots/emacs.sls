emacs24:
  pkg.installed

git_for_emacs_config:
  pkg.installed:
    - name: git

# this is needed for emacs coq integration
proofgeneral:
  pkg.installed

{% for username, uid in pillar.get('users', {}).items() %}
emacs_config_{{ username }}:
  git.latest:
    - name: https://github.com/SKoschnicke/emacs.d.git
    - target: /home/{{ username }}/.emacs.d
    - user: {{ username }}
    - require:
      - pkg: git
{% endfor %}