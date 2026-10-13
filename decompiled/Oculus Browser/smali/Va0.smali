.class public final synthetic LVa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LYa0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LYa0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVa0;->a:LYa0;

    iput-object p2, p0, LVa0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LVa0;->a:LYa0;

    iget-object v1, p0, LVa0;->b:Ljava/lang/String;

    check-cast p1, LJx;

    .line 1
    iget-object v0, v0, LYa0;->a:LGw;

    check-cast v0, LTa0;

    invoke-virtual {v0, v1, p1}, LTa0;->a(Ljava/lang/String;LJx;)V

    return-void
.end method
