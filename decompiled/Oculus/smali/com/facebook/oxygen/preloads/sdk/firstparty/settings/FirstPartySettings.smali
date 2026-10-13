.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;
.super Ljava/lang/Object;
.source "FirstPartySettings.java"


# instance fields
.field private mAutoUpdatesEnabled:Z

.field private mHasMobileDataConsent:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIsManaged:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageSignature:Ljava/lang/String;

.field private mRolloutToken:Ljava/lang/String;

.field private final mShouldAcceptTos:Z

.field private final mShouldShowExplicitTos:Z

.field private mTosAccepted:Z

.field private mUpdateAvailableNotif:Z

.field private mUpdateInstalledNotif:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Boolean;ZZLjava/lang/String;ZZZ)V
    .locals 0
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mPackageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mPackageSignature:Ljava/lang/String;

    .line 42
    iput-boolean p3, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mIsManaged:Z

    .line 43
    iput-boolean p4, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mAutoUpdatesEnabled:Z

    .line 44
    iput-object p5, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mHasMobileDataConsent:Ljava/lang/Boolean;

    .line 45
    iput-boolean p6, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateAvailableNotif:Z

    .line 46
    iput-boolean p7, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateInstalledNotif:Z

    .line 47
    iput-object p8, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mRolloutToken:Ljava/lang/String;

    .line 48
    iput-boolean p9, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mTosAccepted:Z

    .line 49
    iput-boolean p10, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mShouldAcceptTos:Z

    .line 50
    iput-boolean p11, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mShouldShowExplicitTos:Z

    .line 51
    return-void
.end method

.method public static pushTosAcceptedSetting(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 223
    sget-object v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->TERMS_OF_SERVICE_ACCEPTED:Ljava/lang/String;

    if-eqz p2, :cond_0

    move v0, v1

    .line 224
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    invoke-static {p1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->getPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 238
    if-eq v0, v1, :cond_1

    .line 239
    new-instance v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 1 row changed, actually "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v2, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;

    const-string v3, "Could not resolve content uri for firstparty settings"

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 234
    :catch_1
    move-exception v0

    .line 235
    new-instance v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;

    const-string v3, "Unexpected failure."

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :cond_1
    return-void
.end method

.method public static querySettings(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;
    .locals 16

    .prologue
    .line 134
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 135
    if-nez v12, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to fetch settings: null cursor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to fetch settings: empty cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 144
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->PACKAGE_NAME:Ljava/lang/String;

    .line 145
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 146
    const-string/jumbo v1, "signature"

    .line 147
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 148
    const-string v1, "is_managed"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 149
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->AUTO_UPDATES_ENABLED:Ljava/lang/String;

    .line 150
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 151
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->HAS_MOBILE_DATA_CONSENT:Ljava/lang/String;

    .line 152
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 153
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_AVAILABLE:Ljava/lang/String;

    .line 154
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 155
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_INSTALLED:Ljava/lang/String;

    .line 156
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 157
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->ROLLOUT_TOKEN:Ljava/lang/String;

    .line 158
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 159
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->TERMS_OF_SERVICE_ACCEPTED:Ljava/lang/String;

    .line 160
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 161
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->SHOULD_ACCEPT_TOS:Ljava/lang/String;

    .line 162
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 163
    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->SHOULD_SHOW_EXPLICIT_TOS:Ljava/lang/String;

    .line 164
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 166
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    .line 169
    :goto_0
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    .line 170
    :goto_1
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x1

    .line 171
    :goto_2
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v7, 0x1

    .line 172
    :goto_3
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    const/4 v9, 0x0

    .line 178
    if-ltz v10, :cond_2

    .line 179
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    move v9, v0

    .line 182
    :cond_2
    const/4 v10, 0x0

    .line 183
    if-ltz v14, :cond_3

    .line 184
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    move v10, v0

    .line 187
    :cond_3
    const/4 v11, 0x0

    .line 188
    if-ltz v14, :cond_4

    .line 189
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_6
    move v11, v0

    .line 192
    :cond_4
    const/4 v5, 0x0

    .line 193
    if-ltz v13, :cond_5

    .line 194
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 197
    :cond_5
    new-instance v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Boolean;ZZLjava/lang/String;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 168
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 169
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 170
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 171
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 179
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 184
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 189
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 194
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static querySettings(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->getPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->querySettings(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    move-result-object v0

    return-object v0
.end method

.method public static querySettings(Landroid/content/Context;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->querySettings(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRolloutToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mRolloutToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUpdatesEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mAutoUpdatesEnabled:Z

    return v0
.end method

.method public isUpdateAvailableNotifEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateAvailableNotif:Z

    return v0
.end method

.method public isUpdateInstalledNotifEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateInstalledNotif:Z

    return v0
.end method

.method public pushSettings(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->getPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->pushSettings(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 251
    return-void
.end method

.method public pushSettings(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 256
    sget-object v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->AUTO_UPDATES_ENABLED:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mAutoUpdatesEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 257
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 256
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mHasMobileDataConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 260
    sget-object v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->HAS_MOBILE_DATA_CONSENT:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mHasMobileDataConsent:Ljava/lang/Boolean;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 260
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    :cond_0
    sget-object v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_AVAILABLE:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateAvailableNotif:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 267
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 265
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    sget-object v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_INSTALLED:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateInstalledNotif:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 270
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 268
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mRolloutToken:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 273
    sget-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->ROLLOUT_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 278
    :goto_4
    sget-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->TERMS_OF_SERVICE_ACCEPTED:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mTosAccepted:Z

    if-eqz v4, :cond_6

    .line 279
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 278
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 283
    if-gez v0, :cond_7

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to update settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 256
    goto :goto_0

    :cond_2
    move v0, v2

    .line 262
    goto :goto_1

    :cond_3
    move v0, v2

    .line 265
    goto :goto_2

    :cond_4
    move v0, v2

    .line 268
    goto :goto_3

    .line 275
    :cond_5
    sget-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->ROLLOUT_TOKEN:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mRolloutToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move v1, v2

    .line 278
    goto :goto_5

    .line 287
    :cond_7
    return-void
.end method

.method public pushSettings(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->pushSettings(Landroid/content/ContentResolver;)V

    .line 247
    return-void
.end method

.method public setAutoUpdatesEnabled(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mAutoUpdatesEnabled:Z

    .line 102
    return-void
.end method

.method public setRolloutToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mRolloutToken:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUpdateAvailableNotifEnabled(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateAvailableNotif:Z

    .line 110
    return-void
.end method

.method public setUpdateInstalledNotifEnabled(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->mUpdateInstalledNotif:Z

    .line 114
    return-void
.end method
