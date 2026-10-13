.class public Lfe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJd0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/tab/Tab;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfe0;->b:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method
