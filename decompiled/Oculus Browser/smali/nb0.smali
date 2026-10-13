.class public final synthetic Lnb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LJx;


# direct methods
.method public constructor <init>(LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb0;->a:LJx;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnb0;->a:LJx;

    check-cast p1, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->a(LJx;Lcom/google/android/libraries/feed/api/host/network/HttpResponse;)V

    return-void
.end method
