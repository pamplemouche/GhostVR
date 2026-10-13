.class public final synthetic LVC0;
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

    iput-object p1, p0, LVC0;->w:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LVC0;->w:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    .line 1
    iget-wide v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v1

    invoke-virtual {v1}, LUg0;->b()V

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 5
    invoke-static {v0}, LJ/N;->MQhpB95X(Ljava/lang/Object;)J

    move-result-wide v1

    .line 6
    iput-wide v1, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->A:J

    :cond_1
    :goto_0
    return-void
.end method
