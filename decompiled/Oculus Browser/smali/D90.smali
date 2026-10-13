.class public final synthetic LD90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LG90;


# direct methods
.method public constructor <init>(LG90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD90;->w:LG90;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LD90;->w:LG90;

    .line 1
    invoke-virtual {v0}, LG90;->b()V

    return-void
.end method
