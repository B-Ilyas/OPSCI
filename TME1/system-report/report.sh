mkdir system-report
touch system-report/hw.info #exo1
touch system-report/file.info #exo2
touch system-report/ps.info #exo3
touch system-report/res.info #exo8
touch system-report/env.info #exo8 tme2

cd system-report

df -h | grep sda[0-9] >> a.info 2>> a.error
cat /proc/meminfo >> a.info 2>> a.error
cat /proc/cpuinfo >> a.info 2>> a.error
lspci | grep VGA  >> a.info 2>> a.error

du -h --max-depth=1 >> b.info 2>> b.error
quota >> b.info 2>> b.error
find ~ -name *\.java| wc -l >> b.info 2>> b.error

ps -aux | grep ^`whoami` >> c.info 2>> c.error
top -u $USER >> c.info 2>> c.error

ip addr >> res.info 2>> res.error
nmap localhost >> res.info 2>> res.error

printenv >> env.info 2>> env.error
