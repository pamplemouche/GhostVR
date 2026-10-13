.class public abstract LvD0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LaV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LaV;

    const-string v1, "SendTabToSelf.Notification"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LvD0;->a:LaV;

    return-void
.end method
