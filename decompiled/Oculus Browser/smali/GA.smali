.class public abstract LGA;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)LGA;
    .locals 9

    new-instance v8, LOA;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, LOA;-><init>(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v8
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, LOA;

    .line 1
    iget-object p1, p1, LOA;->g:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 2
    move-object p1, p0

    check-cast p1, LOA;

    .line 3
    iget-object p1, p1, LOA;->f:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method
