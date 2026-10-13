.class public Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;
.super Ljava/lang/Object;
.source "OVRNuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;,
        Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;,
        Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;,
        Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;
    }
.end annotation


# static fields
.field private static final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createIntContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    return-object v0
.end method

.method private static createLongContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    return-object v0
.end method

.method private static createStringContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-object v0
.end method

.method private static getBooleanWithDefault(Landroid/database/Cursor;IZ)Z
    .locals 1

    .prologue
    .line 514
    if-gez p1, :cond_0

    .line 517
    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getClientPreferenceData(Landroid/content/Context;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;
    .locals 29

    .prologue
    .line 162
    sget-object v3, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 165
    if-nez v2, :cond_0

    .line 166
    new-instance v3, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v3 .. v28}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;-><init>(Ljava/lang/String;ZZZZZZZZZZZZLcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;JLjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-object v3

    .line 193
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    const-string v3, "default_browser"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 196
    const/4 v4, 0x0

    .line 197
    invoke-static {v2, v3, v4}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    const-string v3, "nux_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 200
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 202
    const-string v3, "nux_seen_count"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 203
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v21

    .line 205
    const-string v3, "nux_state"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 206
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 208
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 209
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 211
    const-string v3, "has_seen_confirm_quit"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 212
    const/4 v5, 0x0

    .line 213
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v6

    .line 215
    const-string v3, "has_seen_confirm_quit_notif"

    .line 216
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 217
    const/4 v5, 0x0

    .line 218
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v7

    .line 220
    const-string v3, "has_seen_focus"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 221
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v8

    .line 223
    const-string v3, "has_seen_internet_browser_prompt"

    .line 224
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 225
    const/4 v5, 0x0

    .line 226
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v9

    .line 228
    const-string v3, "has_seen_tutorial_prompt"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 229
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v11

    .line 231
    const-string v3, "has_seen_party_calls_nux"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 232
    const/4 v5, 0x0

    .line 233
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v12

    .line 235
    const-string v3, "has_seen_saved_prompt"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 236
    const/4 v5, 0x0

    .line 237
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v13

    .line 239
    const-string v3, "has_seen_long_hsw"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 240
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v14

    .line 242
    const-string v3, "has_opted_out_hsw"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 243
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v15

    .line 245
    const-string v3, "has_opted_out_of_malibu_recenter"

    .line 246
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 247
    const/4 v5, 0x0

    .line 248
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v16

    .line 250
    const-string v3, "high_priority_apps_download_status"

    .line 251
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 252
    sget-object v5, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 253
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStatusWithDefault(Landroid/database/Cursor;ILcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    move-result-object v17

    .line 256
    const-string v3, "high_priority_apps_download_waittime"

    .line 257
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 258
    const-wide/16 v18, 0x0

    .line 259
    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v18

    .line 262
    const-string v3, "has_docked"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 263
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v26

    .line 265
    const-string v3, "has_finished_nux"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 266
    const/4 v5, 0x0

    .line 267
    invoke-static {v2, v3, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v5

    .line 269
    const-string v3, "has_seen_nux"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 270
    const/4 v10, 0x0

    .line 271
    invoke-static {v2, v3, v10}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v10

    .line 273
    const-string v3, "has_finished_ipd_adjust"

    .line 274
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 275
    const/16 v23, 0x0

    .line 276
    move/from16 v0, v23

    invoke-static {v2, v3, v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v23

    .line 278
    const-string v3, "has_finished_monterey_nux"

    .line 279
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 280
    const/16 v24, 0x0

    .line 281
    move/from16 v0, v24

    invoke-static {v2, v3, v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v24

    .line 283
    const-string v3, "rollout_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 284
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 286
    const-string v3, "high_priority_apps_pkgs"

    .line 287
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 288
    const/16 v28, 0x0

    .line 289
    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 292
    new-instance v3, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    invoke-direct/range {v3 .. v28}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;-><init>(Ljava/lang/String;ZZZZZZZZZZZZLcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;JLjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getIntWithDefault(Landroid/database/Cursor;II)I
    .locals 0

    .prologue
    .line 521
    if-gez p1, :cond_0

    .line 524
    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLongWithDefault(Landroid/database/Cursor;IJ)J
    .locals 0

    .prologue
    .line 528
    if-gez p1, :cond_0

    .line 531
    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getStatusWithDefault(Landroid/database/Cursor;ILcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    .locals 2

    .prologue
    .line 542
    if-gez p1, :cond_0

    .line 546
    :goto_0
    return-object p2

    :cond_0
    invoke-static {}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->values()[Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    move-result-object v0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aget-object p2, v0, v1

    goto :goto_0
.end method

.method private static getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 535
    if-gez p1, :cond_0

    .line 538
    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static setHighPriorityAppDownloadPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "high_priority_apps_pkgs"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, "high_priority_apps_pkgs"

    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setHighPriorityAppsDownloadStatus(Landroid/content/Context;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V
    .locals 2

    .prologue
    .line 389
    const-string v0, "high_priority_apps_download_status"

    .line 392
    invoke-virtual {p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->ordinal()I

    move-result v1

    .line 389
    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 393
    return-void
.end method

.method public static setHighPriorityAppsDownloadWaitTime(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 397
    const-string v0, "high_priority_apps_download_waittime"

    invoke-static {p0, v0, p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateLongPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 401
    return-void
.end method

.method private static updateIntPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    invoke-static {p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createIntContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 476
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private static updateLongPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 490
    invoke-static {p1, p2, p3}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createLongContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 489
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method private static updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 464
    invoke-static {p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createStringContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 463
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    return-void
.end method
