.class public final synthetic LCz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LDz;


# direct methods
.method public constructor <init>(LDz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCz;->w:LDz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LCz;->w:LDz;

    .line 1
    iget-object v0, v0, LDz;->h:Lrw;

    check-cast v0, Lmb0;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lmb0;->a(I)V

    return-void
.end method
