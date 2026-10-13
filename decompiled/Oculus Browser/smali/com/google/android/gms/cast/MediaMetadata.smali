.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final A:LGj;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public final w:Ljava/util/List;

.field public final x:Landroid/os/Bundle;

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "double"

    const-string v1, "ISO-8601 date String"

    const/4 v2, 0x0

    const-string v3, "String"

    const-string v4, "int"

    .line 1
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->z:[Ljava/lang/String;

    .line 2
    new-instance v0, LHl;

    invoke-direct {v0}, LHl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    new-instance v0, LGj;

    invoke-direct {v0}, LGj;-><init>()V

    const/4 v1, 0x4

    const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v3, "creationDateTime"

    .line 4
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v3, "releaseDate"

    .line 5
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v3, "originalAirdate"

    .line 6
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    const-string v3, "title"

    .line 7
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v3, "subtitle"

    .line 8
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v3, "artist"

    .line 9
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v3, "albumArtist"

    .line 10
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v3, "albumName"

    .line 11
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v3, "composer"

    .line 12
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const/4 v2, 0x2

    const-string v3, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v4, "discNumber"

    .line 13
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v4, "trackNumber"

    .line 14
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v4, "season"

    .line 15
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v4, "episode"

    .line 16
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v4, "seriesTitle"

    .line 17
    invoke-virtual {v0, v3, v4, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v4, "studio"

    .line 18
    invoke-virtual {v0, v3, v4, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v4, "width"

    .line 19
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v3, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v4, "height"

    .line 20
    invoke-virtual {v0, v3, v4, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v3, "location"

    .line 21
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const/4 v1, 0x3

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v3, "latitude"

    .line 22
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v3, "longitude"

    .line 23
    invoke-virtual {v0, v2, v3, v1}, LGj;->a(Ljava/lang/String;Ljava/lang/String;I)LGj;

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    .line 9
    iput p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v0, p1}, LGj;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->z:[Ljava/lang/String;

    aget-object v1, v2, v1

    const/16 v2, 0x15

    invoke-static {p1, v2}, LZi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, LZi;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Value for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null and empty keys are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 6

    .line 6
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v3, v2}, LGj;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 9
    :cond_0
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v3, v2}, LGj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 10
    :cond_1
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v3, v2}, LGj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v3, v2}, LGj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google."

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 17
    :cond_6
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 19
    :cond_7
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_8
    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    .line 21
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 25
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 26
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    .line 27
    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_4

    if-nez v4, :cond_3

    .line 28
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v2

    .line 29
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final varargs b(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "metadataType"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    .line 7
    iget-object v2, v2, LGj;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 9
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->A:LGj;

    invoke-virtual {v3, v2}, LGj;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, LSs;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 16
    :cond_4
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 18
    :cond_5
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 20
    :cond_6
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_7
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 25
    :cond_8
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final r()Lorg/json/JSONObject;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "metadataType"

    .line 2
    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    invoke-static {v0, v1}, LSs;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v8, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v9, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v6, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v7, "com.google.android.gms.cast.metadata.WIDTH"

    .line 6
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v8, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v9, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v4, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v6, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v7, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 7
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v5, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 8
    filled-new-array {v4, v3, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    .line 9
    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    .line 10
    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v0, v1}, LCp;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x3

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-static {p1, v0, v2, v1}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v0, 0x4

    .line 5
    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    .line 6
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
