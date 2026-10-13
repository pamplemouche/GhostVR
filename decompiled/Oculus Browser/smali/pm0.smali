.class public Lpm0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/app/PendingIntent;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpm0;->a:Landroid/app/PendingIntent;

    .line 3
    iput p2, p0, Lpm0;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;
    .locals 1

    .line 1
    new-instance v0, Lpm0;

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, p0, p3}, Lpm0;-><init>(Landroid/app/PendingIntent;I)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;
    .locals 1

    .line 1
    new-instance v0, Lpm0;

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, p0, p3}, Lpm0;-><init>(Landroid/app/PendingIntent;I)V

    return-object v0
.end method
