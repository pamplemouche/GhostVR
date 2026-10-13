.class public final synthetic LAl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LCl0;


# direct methods
.method public constructor <init>(LCl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAl0;->w:LCl0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LAl0;->w:LCl0;

    .line 1
    invoke-virtual {v0}, LCl0;->d()V

    return-void
.end method
