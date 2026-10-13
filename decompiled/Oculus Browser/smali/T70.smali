.class public final synthetic LT70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT70;->a:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 2

    iget-object p1, p0, LT70;->a:Lorg/chromium/base/Callback;

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget p2, p2, v1

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
