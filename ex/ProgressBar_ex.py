#! /usr/bin/env python
# vim: set fileencoding=utf-8
from progressbar import Bar, ProgressBar, Percentage
import time

pbar = ProgressBar(widgets=[Percentage(), Bar()], maxval=300).start()
for i in range(300):
    time.sleep(0.01)
    pbar.update(i+1)
pbar.finish()

