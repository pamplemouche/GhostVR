.class public final synthetic LIN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LON0;


# direct methods
.method public constructor <init>(LON0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIN0;->a:LON0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LIN0;->a:LON0;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v0, v0, LON0;->c:LnU;

    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
