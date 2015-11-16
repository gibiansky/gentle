KALDI_BASE = kaldi/src/

all:
EXTRA_CXXFLAGS = -Wno-sign-compare
include $(KALDI_BASE)kaldi.mk

LDFLAGS += $(CUDA_LDFLAGS)
LDLIBS += $(CUDA_LDLIBS)

BINFILES = standard_kaldi mkgraph

OBJFILES =

TESTFILES =

CXXFLAGS += -I$(KALDI_BASE)

ADDLIBS = $(KALDI_BASE)online2/kaldi-online2.a $(KALDI_BASE)ivector/kaldi-ivector.a \
           $(KALDI_BASE)nnet2/kaldi-nnet2.a $(KALDI_BASE)lat/kaldi-lat.a \
          $(KALDI_BASE)decoder/kaldi-decoder.a  $(KALDI_BASE)cudamatrix/kaldi-cudamatrix.a \
          $(KALDI_BASE)feat/kaldi-feat.a $(KALDI_BASE)transform/kaldi-transform.a $(KALDI_BASE)gmm/kaldi-gmm.a \
          $(KALDI_BASE)thread/kaldi-thread.a $(KALDI_BASE)hmm/kaldi-hmm.a $(KALDI_BASE)tree/kaldi-tree.a \
          $(KALDI_BASE)matrix/kaldi-matrix.a $(KALDI_BASE)fstext/kaldi-fstext.a \
          $(KALDI_BASE)util/kaldi-util.a $(KALDI_BASE)base/kaldi-base.a 

include $(KALDI_BASE)makefiles/default_rules.mk
