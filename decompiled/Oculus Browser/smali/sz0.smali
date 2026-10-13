.class public Lsz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsz0;->a:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lsz0;->a:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 3
    iput-object p1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->k0:Ljava/util/List;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->u0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 5
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a(Ljava/util/List;)V

    return-void
.end method
