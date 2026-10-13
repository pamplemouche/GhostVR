.class public final synthetic Lho0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmo0;


# direct methods
.method public constructor <init>(Lmo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lho0;->w:Lmo0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lho0;->w:Lmo0;

    invoke-virtual {v0}, Lmo0;->a()V

    return-void
.end method
