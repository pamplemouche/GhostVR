.class public LOu0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LOu0;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOu0;->a:Ljava/util/List;

    const-string v0, "AndroidPaymentApps"

    .line 3
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LOu0;->a:Ljava/util/List;

    new-instance v1, Lfu0;

    invoke-direct {v1}, Lfu0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "ServiceWorkerPaymentApps"

    .line 5
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, LOu0;->a:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
