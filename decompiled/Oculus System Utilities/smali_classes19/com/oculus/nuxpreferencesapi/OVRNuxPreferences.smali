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
.field public static final DEFAULT_DOWNLOAD_WAIT_TIME:J

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

.method private static createContentValues(Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 2
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "updated"    # Z

    .prologue
    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 510
    return-object v0
.end method

.method private static createIntContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "updated"    # I

    .prologue
    .line 481
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    return-object v0
.end method

.method private static createLongContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;
    .locals 3
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "updated"    # J

    .prologue
    .line 494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    return-object v0
.end method

.method private static createStringContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "updated"    # Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-object v0
.end method

.method private static getBooleanWithDefault(Landroid/database/Cursor;IZ)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "colId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 514
    if-gez p1, :cond_0

    .line 517
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
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
    .locals 56
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    sget-object v3, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 165
    .local v34, "cursor":Landroid/database/Cursor;
    if-nez v34, :cond_0

    .line 166
    new-instance v5, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v5 .. v30}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;-><init>(Ljava/lang/String;ZZZZZZZZZZZZLcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;JLjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-object v5

    .line 193
    :cond_0
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    const-string v2, "default_browser"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 196
    .local v35, "defaultBrowserIndex":I
    const/4 v2, 0x0

    .line 197
    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "defaultBrowserChoice":Ljava/lang/String;
    const-string v2, "nux_result"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 200
    .local v49, "nuxResultIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 202
    .local v22, "nuxResultChoice":Ljava/lang/String;
    const-string v2, "nux_seen_count"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 203
    .local v50, "nuxSeenCountIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getIntWithDefault(Landroid/database/Cursor;II)I

    move-result v23

    .line 205
    .local v23, "nuxSeenCountInt":I
    const-string v2, "nux_state"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 206
    .local v51, "nuxStateIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v51

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 208
    .local v24, "nuxStateChoice":Ljava/lang/String;
    const-string v2, "id"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 209
    .local v46, "idIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 211
    .local v27, "id":Ljava/lang/String;
    const-string v2, "has_seen_confirm_quit"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 212
    .local v32, "confirmQuitIndex":I
    const/4 v2, 0x0

    .line 213
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v8

    .line 215
    .local v8, "confirmQuitBool":Z
    const-string v2, "has_seen_confirm_quit_notif"

    .line 216
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 217
    .local v33, "confirmQuitNotifIndex":I
    const/4 v2, 0x0

    .line 218
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v9

    .line 220
    .local v9, "confirmQuitNotifBool":Z
    const-string v2, "has_seen_focus"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 221
    .local v36, "focusIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v10

    .line 223
    .local v10, "focusBool":Z
    const-string v2, "has_seen_internet_browser_prompt"

    .line 224
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 225
    .local v31, "browserPromptIndex":I
    const/4 v2, 0x0

    .line 226
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v11

    .line 228
    .local v11, "browserPromptBool":Z
    const-string v2, "has_seen_tutorial_prompt"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    .line 229
    .local v55, "tutorialIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v55

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v13

    .line 231
    .local v13, "tutorialBool":Z
    const-string v2, "has_seen_party_calls_nux"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 232
    .local v52, "partyCallsNuxIndex":I
    const/4 v2, 0x0

    .line 233
    move-object/from16 v0, v34

    move/from16 v1, v52

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v14

    .line 235
    .local v14, "partyCallsNuxBool":Z
    const-string v2, "has_seen_saved_prompt"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 236
    .local v54, "savedPromptIndex":I
    const/4 v2, 0x0

    .line 237
    move-object/from16 v0, v34

    move/from16 v1, v54

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v15

    .line 239
    .local v15, "savedPromptBool":Z
    const-string v2, "has_seen_long_hsw"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 240
    .local v47, "longHSWIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v47

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v16

    .line 242
    .local v16, "longHSWBool":Z
    const-string v2, "has_opted_out_hsw"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 243
    .local v45, "hswOptOutIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v17

    .line 245
    .local v17, "hswOptOutBool":Z
    const-string v2, "has_opted_out_of_malibu_recenter"

    .line 246
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 247
    .local v48, "malibuRecenterOptOutIndex":I
    const/4 v2, 0x0

    .line 248
    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v18

    .line 250
    .local v18, "malibuRecenterOptOutBool":Z
    const-string v2, "high_priority_apps_download_status"

    .line 251
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 252
    .local v43, "highPriorityAppsDownloadStatusIndex":I
    sget-object v2, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 253
    move-object/from16 v0, v34

    move/from16 v1, v43

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStatusWithDefault(Landroid/database/Cursor;ILcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    move-result-object v19

    .line 256
    .local v19, "highPriorityAppsDownloadStatus":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    const-string v2, "high_priority_apps_download_waittime"

    .line 257
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 258
    .local v44, "highPriorityAppsWaitTimeIndex":I
    const-wide/16 v4, 0x0

    .line 259
    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-static {v0, v1, v4, v5}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getLongWithDefault(Landroid/database/Cursor;IJ)J

    move-result-wide v20

    .line 262
    .local v20, "highPriorityAppsDownloadWaitTime":J
    const-string v2, "has_docked"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 263
    .local v37, "hasDockedIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v28

    .line 265
    .local v28, "hasDockedBool":Z
    const-string v2, "has_finished_nux"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 266
    .local v40, "hasFinishedNuxIndex":I
    const/4 v2, 0x0

    .line 267
    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v7

    .line 269
    .local v7, "hasFinishedNuxBool":Z
    const-string v2, "has_seen_nux"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 270
    .local v41, "hasSeenNuxIndex":I
    const/4 v2, 0x0

    .line 271
    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v12

    .line 273
    .local v12, "hasSeenNuxBool":Z
    const-string v2, "has_finished_ipd_adjust"

    .line 274
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 275
    .local v38, "hasFinishedIPDAdjustIndex":I
    const/4 v2, 0x0

    .line 276
    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v25

    .line 278
    .local v25, "hasFinishedIPDAdjustBool":Z
    const-string v2, "has_finished_monterey_nux"

    .line 279
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 280
    .local v39, "hasFinishedMontereyNuxIndex":I
    const/4 v2, 0x0

    .line 281
    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getBooleanWithDefault(Landroid/database/Cursor;IZ)Z

    move-result v26

    .line 283
    .local v26, "hasFinishedMontereyNuxBool":Z
    const-string v2, "rollout_token"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 284
    .local v53, "rolloutTokenIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v53

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 286
    .local v29, "rolloutToken":Ljava/lang/String;
    const-string v2, "high_priority_apps_pkgs"

    .line 287
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 288
    .local v42, "highPriorityAppDownloadPackagesIndex":I
    const/4 v2, 0x0

    .line 289
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v0, v1, v2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getStringWithDefault(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 291
    .local v30, "highPriorityAppDownloadPackages":Ljava/lang/String;
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 292
    new-instance v5, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    invoke-direct/range {v5 .. v30}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;-><init>(Ljava/lang/String;ZZZZZZZZZZZZLcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;JLjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getIntWithDefault(Landroid/database/Cursor;II)I
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "colId"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 521
    if-gez p1, :cond_0

    .line 524
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLongWithDefault(Landroid/database/Cursor;IJ)J
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "colId"    # I
    .param p2, "defaultValue"    # J

    .prologue
    .line 528
    if-gez p1, :cond_0

    .line 531
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getStatusWithDefault(Landroid/database/Cursor;ILcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "colId"    # I
    .param p2, "defaultStatus"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .prologue
    .line 542
    if-gez p1, :cond_0

    .line 546
    .end local p2    # "defaultStatus":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
    :goto_0
    return-object p2

    .restart local p2    # "defaultStatus":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;
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
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "colId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 535
    if-gez p1, :cond_0

    .line 538
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static markConfirmQuitNotifSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    const-string v0, "has_seen_confirm_quit_notif"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method public static markConfirmQuitSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    const-string v0, "has_seen_confirm_quit"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method public static markDocked(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const-string v0, "has_docked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 437
    return-void
.end method

.method public static markFinishedIPDAdjust(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const-string v0, "has_finished_ipd_adjust"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 442
    return-void
.end method

.method public static markFinishedMontereyNuxIndex(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    const-string v0, "has_finished_monterey_nux"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 452
    return-void
.end method

.method public static markFocusSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const-string v0, "has_seen_focus"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public static markHasNuxFinished(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    const-string v0, "has_finished_nux"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 339
    return-void
.end method

.method public static markHasOptedOutOfMalibuRecenter(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    const-string v0, "has_opted_out_of_malibu_recenter"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 423
    return-void
.end method

.method public static markInternetBrowserPromptSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    const-string v0, "has_seen_internet_browser_prompt"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public static markLongHSWSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const-string v0, "has_seen_long_hsw"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public static markNotFinishedIPDAdjust(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    const-string v0, "has_finished_ipd_adjust"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method public static markNotFinishedMontereyNuxIndex(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    const-string v0, "has_finished_monterey_nux"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 457
    return-void
.end method

.method public static markNuxNotFinished(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string v0, "has_finished_nux"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 371
    return-void
.end method

.method public static markNuxNotSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const-string v0, "has_seen_nux"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 347
    return-void
.end method

.method public static markNuxSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const-string v0, "has_seen_nux"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method public static markPartyCallsNUXSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    const-string v0, "has_seen_party_calls_nux"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 433
    return-void
.end method

.method public static markSavedPromptSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const-string v0, "has_seen_saved_prompt"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public static markTutorialPromptSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v0, "has_seen_tutorial_prompt"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 428
    return-void
.end method

.method public static registerNuxPrefChangeListener(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "NuxPref"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/oculus/provider/OculusContent$Profile;->getUriFromNuxPref(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->registerObserverForUri(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V

    .line 53
    return-void
.end method

.method private static registerObserverForUri(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    .prologue
    .line 57
    sget-object v2, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .local v1, "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;>;"
    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;>;"
    sget-object v2, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;

    .line 65
    .local v0, "contentObserver":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;
    iget-object v3, v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    :goto_0
    return-void

    .line 71
    .end local v0    # "contentObserver":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;
    :cond_2
    new-instance v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;

    invoke-direct {v0, p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V

    .line 72
    .restart local v0    # "contentObserver":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "browser"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "default_browser"

    invoke-static {p0, v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static setHighPriorityAppDownloadPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
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
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string v2, "high_priority_apps_pkgs"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 412
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 415
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v2, "high_priority_apps_pkgs"

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {p0, v2, v3}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setHighPriorityAppsDownloadStatus(Landroid/content/Context;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadStatus"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "waitTimeInMilliSeconds"    # J

    .prologue
    .line 397
    const-string v0, "high_priority_apps_download_waittime"

    invoke-static {p0, v0, p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateLongPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 401
    return-void
.end method

.method public static setNuxResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "nux_result"

    invoke-static {p0, v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setNuxSeenCount(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 333
    const-string v0, "nux_seen_count"

    invoke-static {p0, v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public static setNuxState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "nux_state"

    invoke-static {p0, v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static setOptedOutofHSW(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optOut"    # Z

    .prologue
    .line 384
    const-string v0, "has_opted_out_hsw"

    invoke-static {p0, v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 386
    return-void
.end method

.method public static unregisterNuxPrefListener(Landroid/content/Context;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 41
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 42
    .local v1, "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;>;"
    if-nez v1, :cond_1

    .line 48
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;

    .line 46
    .local v0, "contentObserver":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private static updateBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceColumn"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 504
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createContentValues(Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v2

    .line 503
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method private static updateIntPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceColumn"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createIntContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 476
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private static updateLongPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceColumn"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 490
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, p2, p3}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createLongContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 489
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method private static updateStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceColumn"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 464
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->createStringContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 463
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    return-void
.end method
