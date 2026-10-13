.class public LJW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LKV;


# direct methods
.method public constructor <init>(LKW0;LKV;)V
    .locals 0

    .line 1
    iput-object p2, p0, LJW0;->w:LKV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LJW0;->w:LKV;

    invoke-interface {v0}, LKV;->a()V

    return-void
.end method
