.class public final synthetic LIq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LIq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    return-void
.end method
