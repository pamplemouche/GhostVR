.class public final LOA;
.super LGA;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/app/PendingIntent;

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, LGA;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, LOA;->a:Ljava/lang/String;

    iput p2, p0, LOA;->b:I

    iput p3, p0, LOA;->c:I

    iput p4, p0, LOA;->d:I

    iput p5, p0, LOA;->e:I

    iput-object p6, p0, LOA;->f:Landroid/app/PendingIntent;

    iput-object p7, p0, LOA;->g:Landroid/app/PendingIntent;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null packageName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LGA;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, LGA;

    iget-object v1, p0, LOA;->a:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, LOA;

    .line 1
    iget-object v3, v3, LOA;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, LOA;->b:I

    check-cast p1, LOA;

    .line 3
    iget v3, p1, LOA;->b:I

    if-ne v1, v3, :cond_3

    .line 4
    iget v1, p0, LOA;->c:I

    .line 5
    iget v3, p1, LOA;->c:I

    if-ne v1, v3, :cond_3

    .line 6
    iget v1, p0, LOA;->d:I

    .line 7
    iget v3, p1, LOA;->d:I

    if-ne v1, v3, :cond_3

    .line 8
    iget v1, p0, LOA;->e:I

    .line 9
    iget v3, p1, LOA;->e:I

    if-ne v1, v3, :cond_3

    .line 10
    iget-object v1, p0, LOA;->f:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p1, LOA;->f:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v3, p1, LOA;->f:Landroid/app/PendingIntent;

    .line 12
    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, LOA;->g:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    .line 13
    iget-object p1, p1, LOA;->g:Landroid/app/PendingIntent;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    iget-object p1, p1, LOA;->g:Landroid/app/PendingIntent;

    .line 14
    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, LOA;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, LOA;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, LOA;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, LOA;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, LOA;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, LOA;->f:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, LOA;->g:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, LOA;->a:Ljava/lang/String;

    iget v1, p0, LOA;->b:I

    iget v2, p0, LOA;->c:I

    iget v3, p0, LOA;->d:I

    iget v4, p0, LOA;->e:I

    iget-object v5, p0, LOA;->f:Landroid/app/PendingIntent;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LOA;->g:Landroid/app/PendingIntent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xcf

    invoke-static {v0, v7}, LZi;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "AppUpdateInfo{packageName="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", availableVersionCode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updateAvailability="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", installStatus="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", clientVersionStalenessDays="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", immediateUpdateIntent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flexibleUpdateIntent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
