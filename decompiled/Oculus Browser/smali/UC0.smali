.class public final synthetic LUC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUC0;->w:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LUC0;->w:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, LD01;->a(I)LF01;

    move-result-object v1

    new-instance v2, LWC0;

    invoke-direct {v2, v0}, LWC0;-><init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    .line 2
    invoke-interface {v1, v2}, LF01;->a(LE01;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
