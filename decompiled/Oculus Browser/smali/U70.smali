.class public final synthetic LU70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LEc1;

.field public final x:LKc1;


# direct methods
.method public constructor <init>(LEc1;LKc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU70;->w:LEc1;

    iput-object p2, p0, LU70;->x:LKc1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LU70;->w:LEc1;

    iget-object v1, p0, LU70;->x:LKc1;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, LEc1;->requestPermissions([Ljava/lang/String;LKc1;)V

    return-void
.end method
