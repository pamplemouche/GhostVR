.class public final Lorg/chromium/components/dom_distiller/core/DomDistillerService;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LYS0;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LYS0;

    .line 3
    invoke-static {p1, p2}, LJ/N;->MzVEzhvu(J)J

    move-result-wide p1

    .line 4
    invoke-direct {v0, p1, p2}, LYS0;-><init>(J)V

    iput-object v0, p0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->a:LYS0;

    return-void
.end method

.method public static create(J)Lorg/chromium/components/dom_distiller/core/DomDistillerService;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;-><init>(J)V

    return-object v0
.end method
