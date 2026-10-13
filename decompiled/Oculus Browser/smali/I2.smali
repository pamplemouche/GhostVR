.class public LI2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LY2;


# direct methods
.method public constructor <init>(LY2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI2;->w:LY2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LI2;->w:LY2;

    invoke-virtual {v0}, LY2;->n()Z

    return-void
.end method
