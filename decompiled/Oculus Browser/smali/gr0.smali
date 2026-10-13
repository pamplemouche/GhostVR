.class public Lgr0;
.super LfY;
.source "PG"


# direct methods
.method public constructor <init>(Lmr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LfY;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "chrome-native://newtab/"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativePrefetchZeroSuggestResults()V

    :goto_0
    return-void
.end method
