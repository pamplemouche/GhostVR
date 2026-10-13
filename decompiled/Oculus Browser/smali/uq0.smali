.class public final synthetic Luq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/base/Callback;

.field public final b:LAq0;

.field public final c:Lzq0;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;LAq0;Lzq0;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq0;->a:Lorg/chromium/base/Callback;

    iput-object p2, p0, Luq0;->b:LAq0;

    iput-object p3, p0, Luq0;->c:Lzq0;

    iput-object p4, p0, Luq0;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Luq0;->a:Lorg/chromium/base/Callback;

    iget-object v1, p0, Luq0;->b:LAq0;

    iget-object v2, p0, Luq0;->c:Lzq0;

    iget-object v3, p0, Luq0;->d:Ljava/util/Set;

    check-cast p1, Ljava/util/Set;

    .line 1
    new-instance v4, LBq0;

    invoke-direct {v4, v1, v2, v3, p1}, LBq0;-><init>(LAq0;Lzq0;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    invoke-interface {v0, v4}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
