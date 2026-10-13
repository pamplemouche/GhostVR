.class public Lbt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final synthetic a:Ldt0;


# direct methods
.method public constructor <init>(Ldt0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbt0;->a:Ldt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 2
    aget v1, p2, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lbt0;->a:Ldt0;

    .line 4
    iget-object p2, p1, Ldt0;->f:Lorg/chromium/base/Callback;

    .line 5
    invoke-virtual {p1}, Ldt0;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
