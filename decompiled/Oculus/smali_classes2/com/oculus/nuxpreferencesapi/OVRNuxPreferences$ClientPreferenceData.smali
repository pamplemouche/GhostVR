.class public Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;
.super Ljava/lang/Object;
.source "OVRNuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientPreferenceData"
.end annotation


# instance fields
.field public final defaultBrowser:Ljava/lang/String;

.field public final hasDocked:Z

.field public final hasFinishedIPDAdjust:Z

.field public final hasFinishedMontereyNux:Z

.field public final hasFinishedNux:Z

.field public final hasOptedOutOfMalibuRecenter:Z

.field public final hasOptedoutOfHSW:Z

.field public final hasSeenConfirmQuit:Z

.field public final hasSeenConfirmQuitNotif:Z

.field public final hasSeenFocus:Z

.field public final hasSeenInternetBrowserPrompt:Z

.field public final hasSeenLongHSW:Z

.field public final hasSeenNux:Z

.field public final hasSeenPartyCallsNUX:Z

.field public final hasSeenSavedPrompt:Z

.field public final hasSeenTutorial:Z

.field public final highPriorityAppDownloadPackages:Ljava/lang/String;

.field public final highPriorityAppsDownloadStatus:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

.field public final highPriorityAppsDownloadWaitTime:J

.field public final nuxResult:Ljava/lang/String;

.field public final nuxSeenCount:I

.field public final nuxState:Ljava/lang/String;

.field public final rolloutToken:Ljava/lang/String;

.field public final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZZZZZZZLcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;JLjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->defaultBrowser:Ljava/lang/String;

    .line 135
    iput-boolean p2, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasFinishedNux:Z

    .line 136
    iput-boolean p3, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenConfirmQuit:Z

    .line 137
    iput-boolean p4, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenConfirmQuitNotif:Z

    .line 138
    iput-boolean p5, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenFocus:Z

    .line 139
    iput-boolean p6, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenInternetBrowserPrompt:Z

    .line 140
    iput-boolean p7, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenNux:Z

    .line 141
    iput-boolean p8, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenTutorial:Z

    .line 142
    iput-boolean p9, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenPartyCallsNUX:Z

    .line 143
    iput-boolean p10, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenSavedPrompt:Z

    .line 144
    iput-boolean p11, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasSeenLongHSW:Z

    .line 145
    iput-boolean p12, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasOptedoutOfHSW:Z

    .line 146
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasOptedOutOfMalibuRecenter:Z

    .line 147
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->highPriorityAppsDownloadStatus:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    .line 148
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->highPriorityAppsDownloadWaitTime:J

    .line 149
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->nuxResult:Ljava/lang/String;

    .line 150
    move/from16 v0, p18

    iput v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->nuxSeenCount:I

    .line 151
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->nuxState:Ljava/lang/String;

    .line 152
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasFinishedIPDAdjust:Z

    .line 153
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasFinishedMontereyNux:Z

    .line 154
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->userID:Ljava/lang/String;

    .line 155
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->hasDocked:Z

    .line 156
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->rolloutToken:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->highPriorityAppDownloadPackages:Ljava/lang/String;

    .line 158
    return-void
.end method
