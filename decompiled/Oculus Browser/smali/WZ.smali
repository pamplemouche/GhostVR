.class public final synthetic LWZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:La00;


# direct methods
.method public constructor <init>(La00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWZ;->w:La00;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LWZ;->w:La00;

    .line 1
    invoke-virtual {v0}, La00;->e()V

    return-void
.end method
