.class public final synthetic LPc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc0;->w:Lbd0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LPc0;->w:Lbd0;

    .line 1
    invoke-virtual {v0}, Lbd0;->d()V

    return-void
.end method
