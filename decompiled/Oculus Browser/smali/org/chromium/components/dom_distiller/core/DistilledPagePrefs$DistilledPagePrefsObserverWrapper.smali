.class public Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LXS0;

.field public final b:J


# direct methods
.method public constructor <init>(LXS0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->MxAdC41V(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->b:J

    .line 4
    iput-object p1, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->a:LXS0;

    return-void
.end method

.method private onChangeFontFamily(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->a:LXS0;

    invoke-interface {v0, p1}, LXS0;->b(I)V

    return-void
.end method

.method private onChangeFontScaling(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->a:LXS0;

    invoke-interface {v0, p1}, LXS0;->a(F)V

    return-void
.end method

.method private onChangeTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$DistilledPagePrefsObserverWrapper;->a:LXS0;

    invoke-interface {v0, p1}, LXS0;->a(I)V

    return-void
.end method
