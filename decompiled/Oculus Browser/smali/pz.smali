.class public final synthetic Lpz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lrz;


# direct methods
.method public constructor <init>(Lrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpz;->w:Lrz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lpz;->w:Lrz;

    invoke-virtual {v0}, Lrz;->a()V

    return-void
.end method
