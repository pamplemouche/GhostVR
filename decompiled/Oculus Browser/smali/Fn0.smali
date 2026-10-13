.class public final synthetic LFn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LFn0;->w:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LFn0;->w:I

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a()Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchedPagesNotifier;->a(I)V

    return-void
.end method
