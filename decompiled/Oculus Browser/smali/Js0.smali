.class public final synthetic LJs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LZs0;


# direct methods
.method public constructor <init>(LZs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJs0;->a:LZs0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LJs0;->a:LZs0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, LZs0;->a(Ljava/util/List;)V

    return-void
.end method
