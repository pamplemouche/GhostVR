.class public final synthetic LUa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LYa0;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(LYa0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUa0;->a:LYa0;

    iput-object p2, p0, LUa0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LUa0;->a:LYa0;

    iget-object v1, p0, LUa0;->b:Ljava/util/List;

    check-cast p1, LJx;

    .line 1
    iget-object v0, v0, LYa0;->a:LGw;

    check-cast v0, LTa0;

    invoke-virtual {v0, v1, p1}, LTa0;->a(Ljava/util/List;LJx;)V

    return-void
.end method
