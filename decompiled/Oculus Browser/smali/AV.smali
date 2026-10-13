.class public final synthetic LAV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBV;


# direct methods
.method public constructor <init>(LBV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAV;->w:LBV;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LAV;->w:LBV;

    .line 1
    iget-object v0, v0, LBV;->a:LLV;

    invoke-virtual {v0}, LLV;->i()V

    return-void
.end method
