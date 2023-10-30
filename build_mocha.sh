PFX=${HOME}/bcftools-1.18/
/bin/rm -f ${PFX}/plugins/{{mocha,beta_binom,genome_rules}.h,{mocha,trio-phase,mochatools,extendFMT}.c}
cp {{mocha,beta_binom,genome_rules}.h,{mocha,trio-phase,mochatools,extendFMT}.c} ${PFX}/plugins
make -C ${PFX}
/bin/cp ${PFX}/bcftools ${PFX}/plugins/{fill-tags,fixploidy,mocha,trio-phase,mochatools,extendFMT}.so $HOME/bin/

NEW_PATH="$HOME/bin:$PATH"
export PATH=`echo $NEW_PATH | sed 's/\/home\/dnanexus\/bin://2g'`
export BCFTOOLS_PLUGINS="$HOME/bin"
