.class public final synthetic LDv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$CanMakePaymentCallback;


# instance fields
.field public final a:LFv0;

.field public final b:LJu0;


# direct methods
.method public constructor <init>(LFv0;LJu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDv0;->a:LFv0;

    iput-object p2, p0, LDv0;->b:LJu0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, LDv0;->a:LFv0;

    iget-object v1, p0, LDv0;->b:LJu0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_0
    check-cast v1, Lyv0;

    invoke-virtual {v1, v0, p1}, Lyv0;->a(LLu0;Ljava/util/List;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
