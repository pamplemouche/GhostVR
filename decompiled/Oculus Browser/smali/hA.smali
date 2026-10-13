.class public final synthetic LhA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LMz;


# direct methods
.method public constructor <init>(LMz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LhA;->w:LMz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LhA;->w:LMz;

    invoke-virtual {v0}, LMz;->a()V

    return-void
.end method
