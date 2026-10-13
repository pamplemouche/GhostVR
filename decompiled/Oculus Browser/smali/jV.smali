.class public LjV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LnV;


# direct methods
.method public constructor <init>(LnV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LjV;->w:LnV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LjV;->w:LnV;

    iget-object v0, v0, LnV;->a:LKV;

    invoke-interface {v0}, LKV;->a()V

    return-void
.end method
