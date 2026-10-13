.class public final synthetic LYZ;
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

    iput-object p1, p0, LYZ;->w:La00;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LYZ;->w:La00;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, La00;->D:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0}, La00;->d()V

    return-void
.end method
