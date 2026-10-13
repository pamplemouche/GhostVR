.class public final synthetic LaO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjO0;


# direct methods
.method public constructor <init>(LjO0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaO0;->a:LjO0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LaO0;->a:LjO0;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, p1, v1}, LjO0;->a(Ljava/util/List;Z)V

    return-void
.end method
