.class public final synthetic LuV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNU;


# instance fields
.field public final a:LLV;


# direct methods
.method public constructor <init>(LLV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LuV;->a:LLV;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, LuV;->a:LLV;

    .line 1
    iget-object v1, v0, LLV;->a:Landroid/os/Handler;

    new-instance v2, LxV;

    invoke-direct {v2, v0, p1}, LxV;-><init>(LLV;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
