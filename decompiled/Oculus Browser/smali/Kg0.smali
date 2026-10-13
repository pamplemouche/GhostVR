.class public final synthetic LKg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUg0;


# direct methods
.method public constructor <init>(LUg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKg0;->w:LUg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LKg0;->w:LUg0;

    invoke-virtual {v0}, LUg0;->c()V

    return-void
.end method
