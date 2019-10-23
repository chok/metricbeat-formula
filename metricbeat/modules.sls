{% set modules = salt['pillar.get']('metricbeat:modules', []) %}

{% if modules|length > 0 %}
metricbeat.modules_enable:
  cmd.run:
    - name: metricbeat modules enable {{modules|join(" ")}}
{% endif %}
