from policykit import Conftest

import json
with open('test.json') as f:
  flags = json.load(f)

for flag in flags["items"]:
    print(flag["key"])
    print(Conftest("policy").test(flag, namespace="launchdarkly", stdin=True))
